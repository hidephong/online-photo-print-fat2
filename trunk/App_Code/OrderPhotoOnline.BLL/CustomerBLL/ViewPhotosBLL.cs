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
/// Summary description for ViewPhotosBLL
/// </summary>
public class ViewPhotosBLL
{
    ViewPhotosDAL vpd = new ViewPhotosDAL();
	public ViewPhotosBLL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public ArrayList getPictureList(int CustID)
    {
        ArrayList lst = new ArrayList();
        DataTable dt = new DataTable();
        dt = vpd.getPicture(CustID);
        UseImgLink uil = new UseImgLink();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            uil = new UseImgLink();
            uil.CILID =Convert.ToInt32( dt.Rows[i]["CILID"].ToString());
            uil.CustID = Convert.ToInt32(dt.Rows[i]["CustID"].ToString());
            uil.ImageLink = dt.Rows[i]["ImageLink"].ToString();
            lst.Add(uil);
        }
        return lst;
    }

    public ArrayList getSomePicture(int cusid, ArrayList arrCILID)
    {
        ArrayList lst = new ArrayList();
        UseImgLink uil = new UseImgLink();
        for (int i = 0; i < arrCILID.Count; i++)
        {
            uil = new UseImgLink();
            uil = vpd.getPictureByCilid(cusid,Convert.ToInt32(arrCILID[i]));
            lst.Add(uil);
        }
        return lst;
    }
}
