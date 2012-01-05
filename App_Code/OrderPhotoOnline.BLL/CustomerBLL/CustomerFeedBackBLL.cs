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
/// Summary description for CustomerFeedBackBLL
/// </summary>
public class CustomerFeedBackBLL
{
    private CustomerFeedBackDAL Cus = new CustomerFeedBackDAL();
	public CustomerFeedBackBLL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public bool CustAddFeed(CusFeedEnti cfb) 
    {
        if (Cus.CustAddFeed(cfb) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}
