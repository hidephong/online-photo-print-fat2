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
/// Summary description for BlockUserBLL
/// </summary>
public class BlockUserBLL
{
    BlockUserDAL budal = new BlockUserDAL();
	public BlockUserBLL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public DataTable GetDataUser(int uid)
    {
        return budal.getUserDataByID(uid);
    }


     public bool DeleteUser(UserEntity ue)
    {
        int rowsAffected = budal.DeleteUser(ue); ;

        // Return true if precisely one row was deleted, otherwise false
        return rowsAffected == 1;
    }

    public bool UpdateUser(string status, int iID)
    {
       

        // Update the admin record
        int rowsAffected =budal.UpdateUser(status,iID);

        // Return true if precisely one row was updated, otherwise false
        return rowsAffected == 1;
    }
}
