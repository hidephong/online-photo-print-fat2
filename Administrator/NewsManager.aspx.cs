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

public partial class OrderPhotoPL_Admin_NewsManager : System.Web.UI.Page
{
    NewsManagerBLL ne = new NewsManagerBLL();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack) 
        {
            show();
            
        }
    }
    public void show() 
    {
        GridView1.DataSource = ne.getnews();
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
       string id = GridView1.Rows[e.RowIndex].Cells[1].Text;
       ne.deletenews(Convert.ToInt32(id));
       GridView1.EditIndex = -1;
       show();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        show();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        NewsEnti nene = new NewsEnti();
        string id = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        string title = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string content = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string subject = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        bool hot = ((CheckBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Checked;
        bool status = ((CheckBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Checked;
        nene.NeID = Convert.ToInt32(id);
        nene.NeTitle = title;
        nene.NeContent = content;
        nene.NeSubj = subject;
        nene.NeHot = hot;
        nene.NeStatus = status;

        ne.updatenews(nene);

        GridView1.EditIndex = -1;
        show();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        show();
    }
}
