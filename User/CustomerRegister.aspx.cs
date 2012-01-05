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

public partial class OrderPhotoPL_CustomerRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
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
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
            CustomerRegisterBLL cr = new CustomerRegisterBLL();
            string _gender;
            if (RbtMale.Checked == true)
            {
                _gender = "Male";
            }
            else { _gender = "Female"; }        
          
            string dt = (DdrMon.SelectedValue + "/" + DdrDay.SelectedValue + "/" + DdrYear.SelectedValue);
            DateTime _date = Convert.ToDateTime(dt);
           
            cr.AddCustomer(TxtUser.Text, "123456", TxtFnam.Text, TxtLnam.Text, TxtEmai.Text, _date, _gender, TxtPhone.Text, TxtAddr.Text,"Enable");
            
            Response.Redirect("default.aspx");
        

    }
   
}
