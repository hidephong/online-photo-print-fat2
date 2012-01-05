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
/// Summary description for viewUser
/// </summary>
public class viewUserBLL
{
    ViewUserDAL vudal = new ViewUserDAL();
	public viewUserBLL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
       public DataTable GetDataUser()
    {
        return vudal.getDataUser();
    }

}
