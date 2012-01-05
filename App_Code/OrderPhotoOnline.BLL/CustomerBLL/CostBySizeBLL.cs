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
/// Summary description for CostBySizeBLL
/// </summary>
public class CostBySizeBLL
{
    ViewCostBySizeDAL vcbs = new ViewCostBySizeDAL();
	public CostBySizeBLL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public ArrayList getCosts()
    {
        ArrayList lst = new ArrayList();
        DataTable dt = new DataTable();
        dt = vcbs.GetCosts();
        PrintSizeCode psc = new PrintSizeCode(); 
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            psc = new PrintSizeCode();
            psc.PSCID=dt.Rows[i]["PSCID"].ToString();
            psc.PSCName=dt.Rows[i]["PSCName"].ToString();
            psc.PSCCost =Convert.ToSingle( dt.Rows[i]["PSCCost"].ToString());
            psc.SizeCm = dt.Rows[i]["SizeCm"].ToString();
            psc.SizeIn = dt.Rows[i]["SizeIn"].ToString();
            lst.Add(psc);
        }
        return lst;
    }
    public ArrayList getCostByID(string pscid)
    {
        ArrayList lst = new ArrayList();
        DataTable dt = new DataTable();
        dt = vcbs.GetCost(pscid);
        PrintSizeCode psc = new PrintSizeCode();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            psc = new PrintSizeCode();
            psc.PSCID = dt.Rows[i]["PSCID"].ToString();
            psc.PSCName = dt.Rows[i]["PSCName"].ToString();
            psc.PSCCost = Convert.ToSingle(dt.Rows[i]["PSCCost"].ToString());
            psc.SizeCm = dt.Rows[i]["SizeCm"].ToString();
            psc.SizeIn = dt.Rows[i]["SizeIn"].ToString();
            lst.Add(psc);
        }
        return lst;
    }
}
