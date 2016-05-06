using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class MasterSivu : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    // muutetaan ValidationSummary elementin ryhmätunniste vastaamaan content sivua.
    public string setValidationGroup
    {
        set { MainValidation.ValidationGroup = value; }
        get { return MainValidation.ValidationGroup; }
    }
    
}