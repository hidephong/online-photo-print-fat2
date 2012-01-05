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
/// Summary description for ImageUpload
/// </summary>
public class ImageUploadBLL
{
    ImageUploadDAL imgUpload = new ImageUploadDAL();
	public ImageUploadBLL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public ArrayList getImages()
    {
        ArrayList lst = new ArrayList();
        DataTable dt = new DataTable();
        dt = imgUpload.GetImages();
        UseImgLink uil = new UseImgLink();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            uil = new UseImgLink();
            
            lst.Add(uil);
        }
        return lst;
    }

    public bool setImages(UseImgLink uil)
    {
        bool rbl = false;

       int iresult = imgUpload.setImage(uil);

       if (iresult > 0) { rbl = true; }
        return rbl;
    }
}
