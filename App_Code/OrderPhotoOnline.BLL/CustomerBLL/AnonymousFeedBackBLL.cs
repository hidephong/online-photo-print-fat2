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
/// Summary description for AnonymousFeedBackBLL
/// </summary>
public class AnonymousFeedBackBLL
{
    private AnonymousFeedBackDAL ano = new AnonymousFeedBackDAL();
	public AnonymousFeedBackBLL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public bool AddFeed(FeedBackEnti feed) 
    {
        if (ano.InsertFeed(feed) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}
