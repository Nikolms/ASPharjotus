using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SessionTarkastus : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        // päivitetään näytettävät tiedot session oliosta aina kun sivu ladataan
        
            NimiDisplay.Text = Session["strEtunimi"].ToString();
            SukuNimiDisplay.Text = Session["strSukuNimi"].ToString();
            IkaDisplay.Text = Session["strIka"].ToString();
        
                SpostiDisplay.Text = Session["strSposti"].ToString();
                TunnisteDisplay.Text = Session["strTunniste"].ToString();
                GSMDisplay.Text = Session["strGSM"].ToString();

                TuoteDisplay.Text = Session["strTuote"].ToString();
                JaksonAikaDisplay.Text = Session["strJakso"].ToString();
    }
}