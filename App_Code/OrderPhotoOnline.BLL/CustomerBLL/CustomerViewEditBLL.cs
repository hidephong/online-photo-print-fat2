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
/// Summary description for CustomerViewEdit
/// </summary>
public class CustomerViewEditBLL
{
    CustomerViewEditDAL cvedal = new CustomerViewEditDAL();
	public CustomerViewEditBLL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    

    public DataTable ViewCustomer(string userName) 
    {
        return cvedal.getCustomerByUsername(userName);
    }

    public bool UpdateCustomer(Customer cu) 
    {
        int breturn;
        breturn = cvedal.UpdateCustomer(cu);
        return breturn > 0;
    }
}
