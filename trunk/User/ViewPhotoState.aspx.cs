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

public partial class OrderPhotoPL_Customer_ViewPhotoState : System.Web.UI.Page
{
    PhotoStatusBLL psb = new PhotoStatusBLL();  
    PhotoStatus ps = new PhotoStatus();
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int pid = Convert.ToInt32(txtID.Text);
      
        ps = psb.getPhotoStatus(pid);
        lblStatus.Text="Your photo number "+ps.PurNo+" is "+ps.Status;
        MultiView1.ActiveViewIndex = 1;
    }
}
