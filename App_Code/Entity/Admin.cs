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
/// Summary description for Admin
/// </summary>
public class Admin
{
	public Admin()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    int aID;

    public int AID
    {
        get { return aID; }
        set { aID = value; }
    }
    string aFullname;

    public string AFullname
    {
        get { return aFullname; }
        set { aFullname = value; }
    }
    string aUsername;

    public string AUsername
    {
        get { return aUsername; }
        set { aUsername = value; }
    }
    string APassword;

    public string APassword1
    {
        get { return APassword; }
        set { APassword = value; }
    }
}
