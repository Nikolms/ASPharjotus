using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class TietokantaManager : System.Web.UI.Page
{
    // Tietokanta yhteyden määrittely
    // Oma database
    //private string conStr =
    //    @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\code\ASP\LoppuHarjoitus\App_Data\OmaDB.mdf;Integrated Security=True;User Instance=True";
    
    // koulun palvelin
     private string conStr =
           "Data Source=copesql;Initial Catalog=sqldb30;User ID=oppilas30;Password=oppi30Las;";


    protected void Page_Load(object sender, EventArgs e)
    {
        // lisätään listboxiin tietokannan elementit ensimmäisellä kerralla
        if (!IsPostBack)
        TaytaListBox();
    }
    // funktio lisää tietokantaan textboxin mukauset tiedot kun nappia painetaan
    protected void LisaaButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(conStr);
        SqlCommand cmd = con.CreateCommand();

        string sql =
            @"
          Insert into TITE13_HENKILO_NIKO(etunimi,sukunimi,email,tunniste, ika) Values (@nimi, @sukunimi,@email, @tunniste, @ika)";
        cmd.CommandText = sql;

        con.Open();

        // määritetään parametrit
        SqlParameter p;
        p = cmd.Parameters.Add("@nimi", SqlDbType.VarChar);      
        p.Value = NimiBox1.Text;

        p = cmd.Parameters.Add("@sukunimi", SqlDbType.VarChar);
        p.Value = sukunimiBox2.Text;

        p = cmd.Parameters.Add("@email", SqlDbType.VarChar);
        p.Value = emailBox3.Text;

        p = cmd.Parameters.Add("@tunniste", SqlDbType.VarChar);
        p.Value = TunnusBox4.Text;

        p = cmd.Parameters.Add("@ika", SqlDbType.TinyInt);
        p.Value = 20;

        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception)
        {
            throw;
        }
        finally
        {
            con.Close();
        }
        refresh_Click();
    }

    // funktio tyhjentää kannan
    protected void PoistaButton_Click(object sender, EventArgs e)
    {
        /*int index = Convert.ToInt32(DBselain.SelectedItem.Value);
        string nimi = DBselain.SelectedItem.Text; */
        
        
        string sql = @" DELETE FROM TITE13_HENKILO_NIKO;";

        SqlConnection con = new SqlConnection(conStr);
        SqlCommand cmd = con.CreateCommand();

        cmd.CommandText = sql;

        con.Open();

        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception)
        {
            throw;
        }
        finally
        {
            con.Close();
        }
        refresh_Click();
        tyhjennaTiedot();
    }

    protected void HaeTiedot(object sender, EventArgs e)
    {

        if (DBselain.SelectedIndex >= 0)
        {
            string sql = @"SELECT * FROM TITE13_HENKILO_NIKO where henkiloID = @id;";

            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = con.CreateCommand();

            cmd.CommandText = sql;

            SqlParameter p;
            p = cmd.Parameters.Add("@id", SqlDbType.Int);
            p.Value = Convert.ToInt32(DBselain.SelectedItem.Value);

            con.Open();

            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    Tiedot1.Text = reader["etunimi"].ToString();
                    Tiedot2.Text = reader["sukunimi"].ToString();
                    Tiedot3.Text = reader["email"].ToString();
                    Tiedot4.Text = reader["tunniste"].ToString();
                }
            }
            con.Close();
        }
        else tyhjennaTiedot();
    }
    protected void tyhjennaTiedot()
    {
        Tiedot1.Text = "";
        Tiedot2.Text = "";
        Tiedot3.Text = "";
        Tiedot4.Text = "";
    }

    // funktio poistaa valinnan kannasta
    protected void PoistaValintaButton_Click(object sender, EventArgs e)
    {

        if (!(DBselain.SelectedIndex < 0))
        {

            string sql = @"DELETE FROM TITE13_HENKILO_NIKO WHERE henkiloID = @id";
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = con.CreateCommand();

            cmd.CommandText = sql;

            SqlParameter p;
            p = cmd.Parameters.Add("@id", SqlDbType.Int);
            p.Value = Convert.ToInt32(DBselain.SelectedItem.Value);

            con.Open();

            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                con.Close();
            }
            Testi.Text = "";
        }
        else
        {
            Testi.Text = "Valitse jotain listalta!";
        }
        refresh_Click();
    }

    protected void Paivita_Button(object sender, EventArgs e)
    {
        tyhjennaTiedot();
        refresh_Click();
    }
    // tyhjentää vanhan näkymän ensin
    protected void refresh_Click()
    {
        
        for (int i = DBselain.Items.Count -1; i >= 0; i--)
        {
            DBselain.Items.RemoveAt(i);
        }
        tyhjennaTiedot();
        // kutsutaan listan täyttäjä funktio
        TaytaListBox();
        
    }

    // funktio täyttää Listboxin tietokannan perusteella
    // funktio erillään jotta sitä voidaan käyttää sekä page_loadissa että
    // refresh napin kautta
    protected void TaytaListBox() {

        string sql =
            "SELECT * FROM TITE13_HENKILO_NIKO;";

        SqlConnection con = new SqlConnection(conStr);
        SqlCommand cmd = con.CreateCommand();

        cmd.CommandText = sql;

        con.Open();
        using (SqlDataReader reader = cmd.ExecuteReader())
        {
            while (reader.Read())
            {
                DBselain.Items.Add(new ListItem((string)reader["sukunimi"], reader["henkiloID"].ToString()));
            }
        }
        con.Close();
    }
}