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
/// Summary description for PhotoStatusBLL
/// </summary>
public class PhotoStatusBLL
{
    PhotoStatusDAL psd = new PhotoStatusDAL();
	public PhotoStatusBLL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public PhotoStatus getPhotoStatus(int pid)
    {
       
        DataTable dt = new DataTable();
        dt = psd.GetStatus(pid);
       PhotoStatus ps = new PhotoStatus();
       ps.PurNo =Convert.ToInt32(dt.Rows[0]["PurchaseOrderNo"].ToString());
       ps.Status = dt.Rows[0]["Status"].ToString();
        
        return ps;
    }
}
