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
/// Summary description for AdminViewOrderDetailsBLL
/// </summary>
public class AdminViewOrderDetailsBLL
{
    AdminViewOrderDAL adm = new AdminViewOrderDAL();
	public AdminViewOrderDetailsBLL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable GetOrder() 
    {
        return adm.GetOrder();
    }
    public DataTable GetOrderBy(int ordID) 
    {
        return adm.GetOrderBy(ordID);
    }
}
