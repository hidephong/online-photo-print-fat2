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
/// Summary description for PrintSizeCode
/// </summary>
public class PrintSizeCode
{
	public PrintSizeCode()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    string pSCID;

    public string PSCID
    {
        get { return pSCID; }
        set { pSCID = value; }
    }
    string pSCName;

    public string PSCName
    {
        get { return pSCName; }
        set { pSCName = value; }
    }
    string sizeIn;

    public string SizeIn
    {
        get { return sizeIn; }
        set { sizeIn = value; }
    }
    string sizeCm;

    public string SizeCm
    {
        get { return sizeCm; }
        set { sizeCm = value; }
    }
    float pSCCost;

    public float PSCCost
    {
        get { return pSCCost; }
        set { pSCCost = value; }
    }
    string pSCNote;

    public string PSCNote
    {
        get { return pSCNote; }
        set { pSCNote = value; }
    }
}
