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

public partial class OrderPhotoPL_Admin_AddUser : System.Web.UI.Page
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
        UpdateUserBLL uu = new UpdateUserBLL();
        bool bl= uu.UpdateUser(txtName.Text, txtUsername.Text, txtPassword.Text, txtAddress.Text, DateTime.Parse(txtDOB.Text), txtEmail.Text,"enable",uu.getIDbyUsername(txtUsername.Text.Trim()));
        if (bl) { Response.Redirect("default.aspx"); }
        else 
        { Response.Redirect("addUser.aspx"); }
    }
}
