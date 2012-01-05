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
/// Summary description for UpdateUserBLL
/// </summary>
public class UpdateUserBLL
{
    UpdateUserDAL uudal = new UpdateUserDAL();
	public UpdateUserBLL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public bool UpdateUser(string fullName, string userName, string passWord, string address, DateTime dob, string email, string status, int iID)
    {
       
        Libs libs = new Libs();
     UserEntity user = new  UserEntity();
     user.UID = iID;
        user.UFullname = fullName;
        user.UUsername = userName;
        user.UPassword = libs.password2md5(passWord);
        user.UAddress = address;
        user.UDOB = dob;
        user.UEmail = email;
        user.Status = status;

        int rowsAffected    = uudal.UpdateUser(user);

        return rowsAffected == 1;
    }

    public int getIDbyUsername(string username)
    {

        return uudal.getIDbyUsername(username);

    }
}
