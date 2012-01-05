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
/// Summary description for FeedBackEnti
/// </summary>
public class FeedBackEnti
{
    private String name;

    public String Name
    {
        get { return name; }
        set { name = value; }
    }
    private String email;

    public String Email
    {
        get { return email; }
        set { email = value; }
    }
    private String message;

    public String Message
    {
        get { return message; }
        set { message = value; }
    }
    private DateTime date;

    public DateTime Date
    {
        get { return date; }
        set { date = value; }
    }

	public FeedBackEnti()
	{
		//
		// TODO: Add constructor logic here
		//
        this.name = "";
        this.email = "";
        this.message = "";
        this.date = DateTime.Now ;
	}
    public FeedBackEnti(string _name,string _email,string _message,DateTime _date)
    {
        this.name = _name;
        this.email = _email;
        this.message = _message;
        this.date = _date;
    }
}
