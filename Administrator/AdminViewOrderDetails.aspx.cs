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

public partial class OrderPhotoPL_Admin_Default2 : System.Web.UI.Page
{
    AdminViewOrderDetailsBLL adm = new AdminViewOrderDetailsBLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        Libs libs = new Libs();
        string ses = null;
        if (Session["admin"] != null) { ses = Session["admin"].ToString(); }
        if (libs.checksession(ses)) { Response.Redirect("AdminLogin.aspx"); }
        if (!Page.IsPostBack) 
        {
           
            GridView1.DataSource = adm.GetOrder();
            GridView1.DataBind();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text);
        DetailsView1.DataSource = adm.GetOrderBy(id);
        DetailsView1.DataBind();
    }
}
