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

public partial class OrderPhotoPL_Customer_Checkout : System.Web.UI.Page
{
    ArrayList arrPic = new ArrayList();
    ArrayList arrShop = new ArrayList();
    int cnt;
    TableRow tRow;
    TableCell tCell;
    ViewPhotosBLL vpb = new ViewPhotosBLL();
    CostBySizeBLL cbs = new CostBySizeBLL();
    ArrayList arrmn = new ArrayList();
    PrintSizeCode psc = new PrintSizeCode();
    private Table allTable;

    protected void Page_Load(object sender, EventArgs e)
    {
        Libs libs = new Libs();
        string ses = null;
        if (Session["login"] != null) { ses = Session["login"].ToString(); }
        if (libs.checksession(ses)) { Response.Redirect("CustomerLogin.aspx"); }
        arrmn = cbs.getCosts();
        int cid = Convert.ToInt32(Session["CustID"].ToString());
        arrPic = vpb.getPictureList(cid);
        cnt = arrPic.Count;

        if (!IsPostBack)
        {
            dtlPhoto.DataSource = arrPic;
            dtlPhoto.DataBind();

            MultiView1.ActiveViewIndex = 0;
        }
        else
        {
            //------------------------------
            TextBox tb1 = (TextBox)FindControl("TextBox1");
            Response.Write(tb1.Text);




            if (MultiView1.ActiveViewIndex == 0)
            {
                UseImgLink uil;

                for (int i = 0; i < cnt; i++)
                {


                    CheckBox selcheck = (CheckBox)dtlPhoto.Items[i].FindControl("selcheck");

                    if (selcheck.Checked)
                    {
                        uil = new UseImgLink();
                        uil = (UseImgLink)arrPic[i];
                        arrShop.Add(uil);

                    }
                }
                cnt = arrShop.Count;
                dlSelectSize.DataSource = arrShop;
                dlSelectSize.DataBind();

                dlCheckout.DataSource = arrShop;
                dlCheckout.DataBind();
                for (int i = 0; i < arrShop.Count; i++)
                {
                    Table tb = (Table)dlSelectSize.Items[i].FindControl("Table1");
                    tb.ID = "ABC"+i;
                    for (int j = 0; j < arrmn.Count; j++)
                    {
                        psc = (PrintSizeCode)arrmn[j];
                        tCell = new TableCell();
                        tRow = new TableRow();

                        tCell.Text = psc.PSCID.ToString();
                        tRow.Cells.Add(tCell);

                        tCell = new TableCell();
                        tCell.Text = psc.SizeIn;
                        tRow.Cells.Add(tCell);

                        tCell = new TableCell();
                        tCell.Text = "$" + psc.PSCCost.ToString();
                        tRow.Cells.Add(tCell);

                        tCell = new TableCell();
                        TextBox txtbo = new TextBox();
                        txtbo.ID = psc.PSCID;
                        tCell.Controls.Add(txtbo);

                        tRow.Cells.Add(tCell);
                        tb.Rows.Add(tRow);
                    }
                    tb.DataBind();
                    allTable = new Table();
                    allTable = tb;
                    Response.Write(allTable.Rows[0].Cells[3].Text);
                    TextBox tx = (TextBox) allTable.Rows[0].Cells[3].Controls[0];
                    Response.Write(tx.Text);

                    tb = new Table();
                    tb = (Table)dlCheckout.Items[i].FindControl("Table2");
                    for (int j = 0; j < arrmn.Count; j++)
                    {
                        psc = (PrintSizeCode)arrmn[j];
                        tCell = new TableCell();
                        tRow = new TableRow();
                        tCell.Text = psc.PSCID.ToString();
                        tRow.Cells.Add(tCell);

                        tCell = new TableCell();
                        tCell.Text = psc.SizeIn;
                        tRow.Cells.Add(tCell);

                        tCell = new TableCell();
                        tCell.Text = "$" + psc.PSCCost.ToString();
                        tRow.Cells.Add(tCell);

                        tCell = new TableCell();
                        TextBox txtbo = new TextBox();
                        txtbo.ID = psc.PSCID;
                        tCell.Controls.Add(txtbo);

                        tRow.Cells.Add(tCell);
                        tb.Rows.Add(tRow);

                    }
                    tb.DataBind();




                }
            }
            if (MultiView1.ActiveViewIndex == 1)
            {
                //ControlCollection cc = this.Controls;
              //  Response.Write("Parent of the text box is : " + allTable.ID);
               // Response.Write(">" + allTable.Rows.Count);
                Table tb = (Table)dlSelectSize.Items[0].FindControl("");
                Control myControl1 = FindControl("ABC");
                if (tb != null)
                {
                    // Get control's parent.
                  //  Control myControl2 = myControl1.Parent;
                    Response.Write("Parent of the text box is : " + allTable.ID);
                    Response.Write(">"+ allTable.Rows.Count);
                }
                else
                {
                    Response.Write("Control not found");
                }

            }

        }
    }
    
    
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
       
        MultiView1.ActiveViewIndex = 1;

       
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
       
       
      
      
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
    }
 
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
 

   
}
