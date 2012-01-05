using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class OrderPhotoPL_Customer_AnonymousFeedBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        bool chk = false;
        FeedBackEnti fb = new FeedBackEnti();
        fb.Name = TxtName.Text;
        fb.Email = TxtEmail.Text;
        fb.Message = TxtMess.Text;
        fb.Date = DateTime.Now;
        AnonymousFeedBackBLL ano = new AnonymousFeedBackBLL();
        chk = ano.AddFeed(fb);
        if(chk == true)
        { Response.Redirect("Thankyou.aspx"); }
        else { Response.Redirect("AnonymousFeedBack.aspx"); }
    }
}
