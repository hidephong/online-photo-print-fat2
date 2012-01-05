using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for AdminViewCustomerBLL
/// </summary>
public class AdminViewCustomerBLL
{
    AdminViewCustomerDAL avcdal = new AdminViewCustomerDAL();
	public AdminViewCustomerBLL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable GetListCustomer()
    {
        return avcdal.getCustomerList();
    }
}
