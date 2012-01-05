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

public partial class OrderPhotoPL_Employee_EmployeeEditInfo : System.Web.UI.Page
{
    EmpEditInfoBLL emp = new EmpEditInfoBLL();
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
            DataTable dtb = new DataTable();
            dtb = emp.GetEmpby("beo");
            TxtFullnam.Text = dtb.Rows[0]["UFullname"].ToString();
            TxtEmail.Text =dtb.Rows[0]["UEmail"].ToString();
            TxtAddr.Text = dtb.Rows[0]["UAddress"].ToString();
            DateTime dat = (DateTime)dtb.Rows[0]["UDOB"];
            DdrMon.Text = dat.Month.ToString();
            DdrDay.Text = dat.Day.ToString();
            DdrYear.Text = dat.Year.ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string dt = (DdrMon.SelectedValue + "/" + DdrDay.SelectedValue + "/" + DdrYear.SelectedValue);
        DateTime date = Convert.ToDateTime(dt);
        EmployeeEnti en = new EmployeeEnti();
        en.Fnam = TxtFullnam.Text;
        en.Email = TxtEmail.Text;
        en.Address = TxtAddr.Text;
        en.Date = date;
        en.Usernam = "beo";

        if (emp.EditEmp(en) > 0)
        {
            Response.Redirect("Default.aspx");
        }
        else { Response.Redirect("EmployeeEditInfo.aspx"); }
    }
}
