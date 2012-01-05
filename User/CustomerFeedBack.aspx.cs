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

public partial class OrderPhotoPL_Customer_CustomerFeedBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Libs libs = new Libs();
        string ses = null;
        if (Session["login"] != null) { ses = Session["login"].ToString(); }
        if (libs.checksession(ses)) { Response.Redirect("CustomerLogin.aspx"); }
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        bool chk = false;
        CusFeedEnti cet = new CusFeedEnti();
        cet.Message = TxtMess.Text;
        cet.Title = TxtName.Text;
        cet.Fdate = DateTime.Now.Date;
        cet.CusID = Convert.ToInt32(Session["CustID"].ToString());
        CustomerFeedBackBLL Cust = new CustomerFeedBackBLL();
        chk =Cust.CustAddFeed(cet);
        if (chk == true)
        { Response.Redirect("Thankyou.aspx"); }
        else { Response.Redirect("CustomerFeedBack.aspx"); }
        
    }
}
