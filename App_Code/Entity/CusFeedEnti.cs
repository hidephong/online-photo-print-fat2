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
/// Summary description for CusFeedEnti
/// </summary>
public class CusFeedEnti
{
    private string title;

    public string Title
    {
        get { return title; }
        set { title = value; }
    }
    private string message;

    public string Message
    {
        get { return message; }
        set { message = value; }
    }
    private DateTime fdate;

    public DateTime Fdate
    {
        get { return fdate; }
        set { fdate = value; }
    }

   
    private int cusID;

    public int CusID
    {
        get { return cusID; }
        set { cusID = value; }
    }
	public CusFeedEnti()
	{
		//
		// TODO: Add constructor logic here
		//
        this.title = "";
        this.message = "";
        this.fdate = DateTime.Now;
        
	}
    public CusFeedEnti(string _title,string _message,DateTime _date,int _custID)
    {
        this.title = _title;
        this.message = _message;
        this.fdate = _date;
        this.cusID = _custID;

    }
}
