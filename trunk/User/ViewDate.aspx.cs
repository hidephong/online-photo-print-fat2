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

public partial class OrderPhotoPL_Customer_ViewDate : System.Web.UI.Page
{
    TimeToComplexBAL tcbal = new TimeToComplexBAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ArrayList arlst = new ArrayList();
        OrderEntity oe = new OrderEntity();
        arlst = tcbal.getTime(Convert.ToInt32(TextBox1.Text));
        for (int i = 0; i < arlst.Count; i++)
        {
            oe = new OrderEntity();
            oe = (OrderEntity) arlst[i];
            lblResult.Text = "You would get order on "+oe.DateComplex;       
        }
        MultiView1.ActiveViewIndex = 1;
   
    }
}
