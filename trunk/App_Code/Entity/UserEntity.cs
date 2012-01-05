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
/// Summary description for UserEntity
/// </summary>
public class UserEntity
{
	public UserEntity()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    int uID;

    public int UID
    {
        get { return uID; }
        set { uID = value; }
    }
    string uFullname;

    public string UFullname
    {
        get { return uFullname; }
        set { uFullname = value; }
    }
    string uUsername;

    public string UUsername
    {
        get { return uUsername; }
        set { uUsername = value; }
    }
    string uPassword;

    public string UPassword
    {
        get { return uPassword; }
        set { uPassword = value; }
    }
    string uEmail;

    public string UEmail
    {
        get { return uEmail; }
        set { uEmail = value; }
    }
    string uAddress;

    public string UAddress
    {
        get { return uAddress; }
        set { uAddress = value; }
    }
    DateTime uDOB;

    public DateTime UDOB
    {
        get { return uDOB; }
        set { uDOB = value; }
    }
    string status;

    public string Status
    {
        get { return status; }
        set { status = value; }
    }
}
