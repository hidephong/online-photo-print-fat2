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
/// Summary description for NewsManagerBLL
/// </summary>
public class NewsManagerBLL
{
    NewsManagerDAL ne = new NewsManagerDAL();
	public NewsManagerBLL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable getnews() 
    {
        return ne.GetNews();
    }
    public void updatenews(NewsEnti enti) 
    {
         ne.UpdateNews(enti);
    }
    public void deletenews(int id) 
    {
        ne.Deletenew(id);
    }
}
