using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class OrderPhotoPL_Admin_AdminViewFeedback : System.Web.UI.Page
{
    AdminViewFeedBackBLL adv = new AdminViewFeedBackBLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        Libs libs = new Libs();
        string ses = null;
        if (Session["admin"] != null) { ses = Session["admin"].ToString(); }
        if (libs.checksession(ses)) { Response.Redirect("AdminLogin.aspx"); }
        if (!Page.IsPostBack)
        {
            GridView1.DataSource = adv.GetFeedBack();
            GridView1.DataBind();
        }
    }
}
