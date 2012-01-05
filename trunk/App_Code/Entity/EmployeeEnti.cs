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
/// Summary description for EmployeeEnti
/// </summary>
public class EmployeeEnti
{

    private string fnam;

    public string Fnam
    {
        get { return fnam; }
        set { fnam = value; }
    }
    private string email;

    public string Email
    {
        get { return email; }
        set { email = value; }
    }
    private string address;

    public string Address
    {
        get { return address; }
        set { address = value; }
    }
    private DateTime date;

    public DateTime Date
    {
        get { return date; }
        set { date = value; }
    }
    private string usernam;

    public string Usernam
    {
        get { return usernam; }
        set { usernam = value; }
    }
	public EmployeeEnti()
	{
		//
		// TODO: Add constructor logic here
		//
        this.fnam = "";
        this.email = "";
        this.address = "";
        this.date = DateTime.Now;
        this.usernam = "";
	}
    public EmployeeEnti(string _fnam,string _email,string _address,DateTime _date,string _usernam)
    {
        this.fnam = _fnam;
        this.email = _email;
        this.address = _address;
        this.date = _date;
        this.usernam = _usernam;
    }
}
