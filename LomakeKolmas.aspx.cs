using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LomakeKolmas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.setValidationGroup = "Group3";
    }
    protected void LomakeKolmasButton_Click(object sender, EventArgs e)
    {
        if (this.IsValid)
        {
            Session["strTuote"] = DropDownList1.SelectedItem.Value;
            Session["strJakso"] = RadioButtonList1.Text.ToString();

        }
    }
}