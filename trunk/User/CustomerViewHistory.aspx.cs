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

public partial class OrderPhotoPL_Customer_CustomerViewHistory : System.Web.UI.Page
{
    CustomerViewHistoryBLL cust = new CustomerViewHistoryBLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        Libs libs = new Libs();
        string ses = null;
        if (Session["login"] != null) { ses = Session["login"].ToString(); }
        if (libs.checksession(ses)) { Response.Redirect("CustomerLogin.aspx"); }
        if (!IsPostBack) 
        {
            GridView1.DataSource = cust.GetHistory(Convert.ToInt32(Session["CustID"]));
            GridView1.DataBind();
            
        }
    }
}
