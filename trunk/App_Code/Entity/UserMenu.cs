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
/// Summary description for Menu
/// </summary>
public class UserMenu
{
	public UserMenu()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string mName;

    public string MName
    {
        get { return mName; }
        set { mName = value; }
    }
    string mLink;

    public string MLink
    {
        get { return mLink; }
        set { mLink = value; }
    }
    string mTitle;

    public string MTitle
    {
        get { return mTitle; }
        set { mTitle = value; }
    }
    int mParent;

    public int MParent
    {
        get { return mParent; }
        set { mParent = value; }
    }
    bool mStatus;

    public bool MStatus
    {
        get { return mStatus; }
        set { mStatus = value; }
    }
}
