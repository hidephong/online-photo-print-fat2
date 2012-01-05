using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class OrderPhotoPL_Admin_Default : System.Web.UI.Page
{
    Libs libs = new Libs();
    protected void Page_Load(object sender, EventArgs e)
    {
        string ses=null;
        if (Session["admin"]!=null) { ses = Session["admin"].ToString(); }
        if (libs.checksession(ses)) { Response.Redirect("AdminLogin.aspx"); }
    }
}
