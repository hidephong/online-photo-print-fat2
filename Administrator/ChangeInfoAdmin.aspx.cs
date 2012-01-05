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

public partial class OrderPhotoPL_Admin_ChangeInfoAdmin : System.Web.UI.Page
{
    Admin ad = new Admin();
    protected void Page_Load(object sender, EventArgs e)
    {
        Libs libs = new Libs(); 
        string ses = null;
        if (Session["admin"] != null) { ses = Session["admin"].ToString(); }
        if (libs.checksession(ses)) { Response.Redirect("AdminLogin.aspx"); }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ChangeAdminInformationBLL aci = new ChangeAdminInformationBLL();
        ad.AFullname = txtFullname.Text;
        ad.AID =Convert.ToInt32(Session["Aid"].ToString());
        ad.APassword1=txtPass.Text;
        ad.AUsername=txtUser.Text;
        aci.setAdminInfoByID(ad); ;
        Response.Redirect("SuccessPage.aspx");
    }
}
