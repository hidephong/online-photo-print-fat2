using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

/// <summary>
/// Summary description for EmpEditInfoDAL
/// </summary>
public class EmpEditInfoDAL
{
    SqlConnection con;

	public EmpEditInfoDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable GetEmpby(string username) 
    {
        SqlParameter[] paramList = new SqlParameter[1] ;
        paramList[0] = new SqlParameter("@username", SqlDbType.NVarChar,50);
        paramList[0].Value = username;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlDataAdapter adt = new SqlDataAdapter("GetEmpByUser", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        
        adt.SelectCommand.Parameters.AddRange(paramList);
        
        DataSet ds = new DataSet();
        adt.Fill(ds);
        con.Close();
        return ds.Tables[0];
    }

    public int EditEmpby(EmployeeEnti emp)
    {
        int result = 0;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();

        SqlParameter[] paramList = new SqlParameter[5];
        paramList[0] = new SqlParameter("@fullnam", SqlDbType.NVarChar, 100);
        paramList[0].Value = emp.Fnam;
        paramList[1] = new SqlParameter("@email", SqlDbType.NVarChar, 50);
        paramList[1].Value = emp.Email;
        paramList[2] = new SqlParameter("@adress", SqlDbType.NVarChar);
        paramList[2].Value = emp.Address;
        paramList[3] = new SqlParameter("@date", SqlDbType.DateTime);
        paramList[3].Value = emp.Date;
        paramList[4] = new SqlParameter("@username", SqlDbType.NVarChar, 50);
        paramList[4].Value = emp.Usernam;

        SqlCommand cmd = new SqlCommand("EditEmpby", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddRange(paramList);

        try
        {
            result = cmd.ExecuteNonQuery();
        }
        catch (SqlException)
        {

            result = 0;
        }

        con.Close();
        return result;
    }

    }
