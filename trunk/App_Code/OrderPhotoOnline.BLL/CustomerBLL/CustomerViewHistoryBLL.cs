using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

/// <summary>
/// Summary description for CustomerViewHistoryBLL
/// </summary>
public class CustomerViewHistoryBLL
{
    CustomerViewHistoryDAL cust = new CustomerViewHistoryDAL();
	public CustomerViewHistoryBLL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable GetHistory(int custid) 
    {
        return cust.GetHistory(custid);
    }
}
