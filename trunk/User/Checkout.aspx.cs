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
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        ViewPhotosBLL vpb = new ViewPhotosBLL();
        ArrayList arrPic = new ArrayList();
        arrPic = vpb.getPictureList(1);
        dtlPhoto.DataSource = arrPic;
        dtlPhoto.DataBind();

        if (!IsPostBack)
        {
            ArrayList dtm = new ArrayList();
            dtm = arrPic;
            DataTable dt = new DataTable("Giohang");
            dt.Columns.Add("CILID");
            dt.Columns.Add("ImageLink", typeof(string));
            dt.Columns.Add("size");



            if (Session["sanpham"] != null)
            {
                string words = Session["sanpham"].ToString();
                string[] split = words.Split(new Char[] { '/' });
                string nm = "";
                string gia = "";
                int i = 0;

                foreach (string s in split)
                {
                    for (int j = 0; j < dtm.Count; j++)
                    {
                        UseImgLink uil = new UseImgLink();
                        uil = (UseImgLink)dtm[j];
                        if (s.Equals(uil.CILID.ToString()))
                        {
                            nm = uil.CILID.ToString();
                            // gia = dtm.Rows[j]["ImageLink"].ToString();
                        }
                    }

                    dt.Rows.Add(s, "", 1);


                    i++;
                }
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }


           
        }
    }
 
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 4;
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 5;
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Request["ID"] != null)
        {
            string masanpham = Request["ID"].ToString();

            if (Session["sanpham"] == null)
            {
                Session["sanpham"] = masanpham;


            }
            else
            {

                string words = Session["sanpham"].ToString();
                string[] split = words.Split(new Char[] { '/' });
                int i = 0;

                foreach (string s in split)
                {
                    if (s == masanpham) { i = 1; }
                }
                if (i == 0) Session["sanpham"] = Session["sanpham"] + "/" + masanpham;
            }
        }
    }
}
