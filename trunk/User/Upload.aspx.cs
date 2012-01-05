using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;

public partial class OrderPhotoPL_Customer_Upload : System.Web.UI.Page
{
    ImageUploadBLL iub = new ImageUploadBLL();
    UseImgLink uil = new UseImgLink();
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
       
    }
    private bool CheckFileType(string FileName)
    {
        string ext = Path.GetExtension(FileName);
        if (ext.Equals(".jpg") || ext.Equals(".jpeg"))
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (fuPicture.HasFile)
        {
            if (CheckFileType(fuPicture.FileName))
        

           
                fuPicture.SaveAs(Server.MapPath("Files/Customer/Photos/") + fuPicture.FileName);
                MultiView1.ActiveViewIndex = 1;
                lblMessage.Text = "Upload Success!";
                imgPrivew.ImageUrl = "Files/Customer/Photos/" + fuPicture.FileName;
                uil.CustID = 1;
                uil.ImageLink = fuPicture.FileName;
              bool bresult=  iub.setImages(uil);
            
        }
            else
            {
                lblMessage.Text = "Upload status: Only JPEG files are accepted!";
            }
               
      

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("choice.aspx");
    }
}
