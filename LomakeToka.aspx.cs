using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LomakeToka : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.setValidationGroup = "Group2";
    }
    protected void LomakeTokaButton_Click(object sender, EventArgs e)
    {
        if (this.IsValid)
        {
            Session["strSposti"] = SpostiTextBox.Text.ToString();
            Session["strTunniste"] = TunnisteVarmennusTextBox.Text.ToString();
            Session["strGSM"] = GSMTextBox.Text.ToString();
        }
    }
}