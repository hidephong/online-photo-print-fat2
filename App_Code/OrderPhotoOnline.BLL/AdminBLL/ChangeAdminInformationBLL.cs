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
/// Summary description for ChangeAdminInformationBLL
/// </summary>
public class ChangeAdminInformationBLL
{
    AdminDAL adal = new AdminDAL();
	public ChangeAdminInformationBLL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable getAdminInfoByID(int iId)
    {
        DataTable aTbl = adal.getDataAdminByID(iId);
        return aTbl;
    }
    public bool setAdminInfoByID(Admin ad)
    {
        bool bl = false;
        Libs libs = new Libs();
        int iresult = adal.UpdateAdmin(ad); ;
        if (iresult > 0) { bl = true; }
        return bl;
    }
}
