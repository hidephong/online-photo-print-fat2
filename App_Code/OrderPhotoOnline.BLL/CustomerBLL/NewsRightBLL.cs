using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections;

/// <summary>
/// Summary description for NewsRightBLL
/// </summary>
public class NewsRightBLL
{
    NewsRightDAL nrd = new NewsRightDAL(); 
	public NewsRightBLL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public ArrayList getNews()
    {
        ArrayList lst = new ArrayList();
        DataTable dt = new DataTable();
        dt = nrd.GetNews();
       NewsRight nr = new NewsRight();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            nr = new NewsRight();
            nr.NContent = dt.Rows[i]["NContent"].ToString();
            nr.NSubj = dt.Rows[i]["NSubj"].ToString();
            nr.NTitle = dt.Rows[i]["NTitle"].ToString();
            nr.NStatus = Convert.ToBoolean(dt.Rows[i]["NStatus"].ToString());
            nr.NDate= Convert.ToDateTime(dt.Rows[i]["Ndate"].ToString());
            nr.NID= Convert.ToInt32(dt.Rows[i]["NID"].ToString());
            nr.NImg = dt.Rows[i]["NImg"].ToString();
            lst.Add(nr);
        }
        return lst;
    }
}
