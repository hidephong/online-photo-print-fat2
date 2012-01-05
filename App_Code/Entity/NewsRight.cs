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
/// Summary description for NewsRight
/// </summary>
public class NewsRight
{
	public NewsRight()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    int nID;

    public int NID
    {
        get { return nID; }
        set { nID = value; }
    }
    string nTitle;

    public string NTitle
    {
        get { return nTitle; }
        set { nTitle = value; }
    }
    string nImg;

    public string NImg
    {
        get { return nImg; }
        set { nImg = value; }
    }
    string nContent;

    public string NContent
    {
        get { return nContent; }
        set { nContent = value; }
    }
    string nSubj;

    public string NSubj
    {
        get { return nSubj; }
        set { nSubj = value; }
    }
    DateTime nDate;

    public DateTime NDate
    {
        get { return nDate; }
        set { nDate = value; }
    }
    bool nHot;

    public bool NHot
    {
        get { return nHot; }
        set { nHot = value; }
    }
    bool nStatus;

    public bool NStatus
    {
        get { return nStatus; }
        set { nStatus = value; }
    }
}
