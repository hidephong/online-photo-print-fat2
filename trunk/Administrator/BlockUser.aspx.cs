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

public partial class OrderPhotoPL_Admin_BlockUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Libs libs = new Libs();
        string ses = null;
        if (Session["admin"] != null) { ses = Session["admin"].ToString(); }
        if (libs.checksession(ses)) { Response.Redirect("AdminLogin.aspx"); }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        BlockUserBLL bUser = new BlockUserBLL();
      bool bl=  bUser.UpdateUser("block",Convert.ToInt32(txtID.Text));
        if (bl) { Response.Redirect("default.aspx"); }
        else
        { Response.Redirect("BlockUser.aspx"); }
    }
}
