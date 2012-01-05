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
/// Summary description for CusRegEnti
/// </summary>
public class CusRegEnti
{
    private string userName;

    public string UserName
    {
        get { return userName; }
        set { userName = value; }
    }
    private string pass;

    public string Pass
    {
        get { return pass; }
        set { pass = value; }
    }
    private string fName;

    public string FName
    {
        get { return fName; }
        set { fName = value; }
    }
    private string lName;

    public string LName
    {
        get { return lName; }
        set { lName = value; }
    }
    private string cuEmail;

    public string CuEmail
    {
        get { return cuEmail; }
        set { cuEmail = value; }
    }
    private DateTime date;

    public DateTime Date
    {
        get { return date; }
        set { date = value; }
    }
    private string gender;

    public string Gender
    {
        get { return gender; }
        set { gender = value; }
    }
    private string phoneNO;

    public string PhoneNO
    {
        get { return phoneNO; }
        set { phoneNO = value; }
    }
    private string addr;

    public string Addr
    {
        get { return addr; }
        set { addr = value; }
    }
    private string status;

    public string Status
    {
        get { return status; }
        set { status = value; }
    }
	public CusRegEnti()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}
