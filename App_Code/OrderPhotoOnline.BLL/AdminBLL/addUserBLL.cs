using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// Summary description for addUser
/// </summary>
public class addUserBLL
{
    AddUserDAL audal = new AddUserDAL();

    public addUserBLL()
    {
        //
        // TODO: Add constructor logic here
        //
    }
   


     public bool AddUser(string fullName, string userName, string passWord, string address, DateTime dob, string email)
    {
        UserEntity user = new UserEntity();
         Libs libs = new Libs();

        user.UFullname = fullName;
        user.UUsername = userName;
        user.UPassword = libs.password2md5(passWord);
        user.UAddress = address;
        user.UDOB = dob;
        user.UEmail = email;


      int ireturn= audal.AddUser(user);
      return ireturn > 0;
    }

    
}
