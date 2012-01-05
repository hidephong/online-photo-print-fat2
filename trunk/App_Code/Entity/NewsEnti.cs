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
/// Summary description for NewsEnti
/// </summary>
public class NewsEnti
{
    private int neID;

    public int NeID
    {
        get { return neID; }
        set { neID = value; }
    }
    private string neTitle;

    public string NeTitle
    {
        get { return neTitle; }
        set { neTitle = value; }
    }
    private string neContent;

    public string NeContent
    {
        get { return neContent; }
        set { neContent = value; }
    }
    private string neSubj;

    public string NeSubj
    {
        get { return neSubj; }
        set { neSubj = value; }
    }
    private bool neHot;

    public bool NeHot
    {
        get { return neHot; }
        set { neHot = value; }
    }
    private bool neStatus;

    public bool NeStatus
    {
        get { return neStatus; }
        set { neStatus = value; }
    }
	public NewsEnti()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}
