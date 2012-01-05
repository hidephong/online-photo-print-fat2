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

public partial class OrderPhotoPL_Customer_CustomerManager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Libs libs = new Libs();
        string ses = null;
        if (Session["login"] != null) { ses = Session["login"].ToString(); }
        if (libs.checksession(ses)) { Response.Redirect("CustomerLogin.aspx"); }
        if (!Page.IsPostBack)
        {
            ArrayList Year = new ArrayList();
            int y = Convert.ToInt32(DateTime.Now.Year.ToString());
            Year.Add("[Year]");
            for (int i = y; i >= 1900; i--)
            {
                Year.Add(i);
            }
            DdrYear.DataSource = Year;
            DdrYear.DataBind();

            CustomerViewEditBLL cus = new CustomerViewEditBLL();
            DataTable dt = cus.ViewCustomer(Session["Login"].ToString());
            TxtUserName.Text = dt.Rows[0]["CustUser"].ToString();
            TxtPass.Text = dt.Rows[0]["Custpass"].ToString();
            TxtFname.Text = dt.Rows[0]["FirstName"].ToString();
            TxtLName.Text = dt.Rows[0]["LastName"].ToString();
            TxtPhone.Text = dt.Rows[0]["PhoneNO"].ToString();
            TxtEmail.Text = dt.Rows[0]["CustEmail"].ToString();
            txtAddress.Text = dt.Rows[0]["Address"].ToString();
            if (dt.Rows[0]["Gender"].ToString().Equals("male"))
            {
                RbtMale.Checked = true;
            }
            else { RbtFemale.Checked = true; }

            DateTime dat = (DateTime)dt.Rows[0]["DateOB"];
            DdrMon.Text = dat.Month.ToString();
            DdrDay.Text = dat.Day.ToString();
            DdrYear.Text = dat.Year.ToString();

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Libs libs = new Libs();
        CustomerViewEditBLL cus = new CustomerViewEditBLL();
        Customer cu = new Customer();
        string dt =(DdrMon.SelectedValue + "/" + DdrDay.SelectedValue + "/" + DdrYear.SelectedValue);
        DateTime date = Convert.ToDateTime(dt);
        string gen;
        if(RbtMale.Checked)
        {
            gen="male";
        }
        else { gen ="female";}
        cu.Address = txtAddress.Text;
        cu.Username= TxtUserName.Text;
        cu.Password = libs.password2md5(TxtPass.Text.Trim());
        cu.FirstName=TxtFname.Text;
        cu.LastName=TxtLName.Text;
        cu.PhoneNO=TxtPhone.Text;
        cu.CustEmail=TxtEmail.Text;
        cu.DateOB=date;
        cu.Gender = gen;
        cus.UpdateCustomer(cu);
    }
}
