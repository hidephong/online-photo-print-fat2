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
/// Summary description for UseImgLink
/// </summary>
public class UseImgLink
{
	public UseImgLink()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    int cILID;

    public int CILID
    {
        get { return cILID; }
        set { cILID = value; }
    }
    string imageLink;

    public string ImageLink
    {
        get { return imageLink; }
        set { imageLink = value; }
    }
    int custID;

    public int CustID
    {
        get { return custID; }
        set { custID = value; }
    }
}
