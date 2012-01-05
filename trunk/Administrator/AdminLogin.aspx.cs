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

public partial class OrderPhotoPL_Admin_AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["admin"] = null;
        if(Request["err"]!=null){
            if (Request["err"].ToString().Equals("1"))
            {
                lblErr.Text = "Username or password not correct!";
            }
        }
    }
    protected void btnLoginAdmin_Click(object sender, EventArgs e)
    {
        AdminBLL adminbll = new AdminBLL();
        if (adminbll.GetLogin(txtUser.Text, txtPass.Text))
        {
            Session["admin"] = txtUser.Text;
            Session["Aid"] = adminbll.GetIDByUserAndPass(txtUser.Text, txtPass.Text);
            Response.Redirect("Default.aspx");
        }else
        {
            Response.Redirect("AdminLogin.aspx?err=1");
        }
        ;
    }
}
