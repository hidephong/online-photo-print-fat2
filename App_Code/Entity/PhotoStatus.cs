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
/// Summary description for PhotoStatus
/// </summary>
public class PhotoStatus
{
	public PhotoStatus()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    int purNo;

    public int PurNo
    {
        get { return purNo; }
        set { purNo = value; }
    }
    string status;

    public string Status
    {
        get { return status; }
        set { status = value; }
    }
}
