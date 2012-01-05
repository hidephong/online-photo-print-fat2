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
/// Summary description for TimeToComplex
/// </summary>
public class TimeToComplexBAL
{
    TimeToComplexDAL ttcdal = new TimeToComplexDAL();
	public TimeToComplexBAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public ArrayList getTime(int oid)
    {
        ArrayList lst = new ArrayList();
        DataTable dt = new DataTable();
        dt = ttcdal.GetTime(oid);
       OrderEntity oe = new OrderEntity();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            oe = new OrderEntity();
            oe.CreateOrder =Convert.ToDateTime(dt.Rows[i]["CreateOrder"].ToString());
            oe.DateComplex=Convert.ToDateTime(dt.Rows[i]["DateComplex"].ToString());
            oe.PurchaseOrderNo= Convert.ToInt32(dt.Rows[i]["PurchaseOrderNo"].ToString());
            oe.TimeToComplex = Convert.ToInt32(dt.Rows[i]["TimeToComplex"].ToString());
            oe.OStatus = Convert.ToInt32(dt.Rows[i]["oStatus"].ToString());
            lst.Add(oe);
        }
        return lst;
    }
}
