using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LomakeEka : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // asetetaan ValidationSummary ryhmään joka vastaa vain tämän sivun validointeja
        Master.setValidationGroup = "Group1";
    }
    protected void LomakeEkaButtonClick(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Session["strEtuNimi"] = EtunimiTextBox.Text;
            Session["strSukuNimi"] = SukuNimiTextBox.Text.ToString();
            Session["strIka"] = IkaTextBox.Text.ToString();
        }
    }
    protected void LisaaKantaanEka_Click(object sender, EventArgs e)
    {
     
    }
}