using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

/// <summary>
/// Summary description for EmpEditInfoBLL
/// </summary>
public class EmpEditInfoBLL
{
    EmpEditInfoDAL emp = new EmpEditInfoDAL();
	public EmpEditInfoBLL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable GetEmpby(string usernam) 
    {
        return emp.GetEmpby(usernam);
    }

    public int EditEmp(EmployeeEnti em) 
    {
        return emp.EditEmpby(em);
    }

}
