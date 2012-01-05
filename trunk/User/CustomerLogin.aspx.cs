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

public partial class OrderPhotoPL_Customer_CustomerLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Login"] = null;
        Session["CustID"] = null;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        CustomerLoginBLL Cust = new CustomerLoginBLL();
        if (Cust.CustLogin(TxtUser.Text, TxtPass.Text.Trim()))
        {
            Session["CustID"] = Cust.GetCustID(TxtUser.Text, TxtPass.Text);
            Session["Login"] = TxtUser.Text;
            Response.Redirect("Default.aspx");

        }
        else
        {
            Response.Redirect("CustomerLogin.aspx");
        }
    }
}
