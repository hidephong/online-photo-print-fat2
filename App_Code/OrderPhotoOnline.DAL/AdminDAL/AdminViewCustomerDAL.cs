using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// Summary description for AdminViewCustomerDAL
/// </summary>
public class AdminViewCustomerDAL
{
    SqlConnection con;
	public AdminViewCustomerDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable getCustomerList()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlDataAdapter adt = new SqlDataAdapter("getCustomerList", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        adt.Fill(ds);
        return ds.Tables[0];
    }

    public int UpdateCustomer(Customer cu)
    {
        int result = 0;
        SqlParameter[] paramList = new SqlParameter[11];
        paramList[0] = new SqlParameter("@Original_CusID", cu.CustID);
        paramList[1] = new SqlParameter("@CustUser", cu.Username);
        paramList[2] = new SqlParameter("@Custpass", cu.Password);
        paramList[3] = new SqlParameter("@FirstName", cu.FirstName);
        paramList[4] = new SqlParameter("@LastName", cu.LastName);
        paramList[5] = new SqlParameter("@CustEmail", cu.CustEmail);
        paramList[6] = new SqlParameter("@DateOB", cu.DateOB);
        paramList[7] = new SqlParameter("@Gender", cu.Gender);
        paramList[8] = new SqlParameter("@PhoneNO", cu.PhoneNO);
        paramList[9] = new SqlParameter("@Address", cu.Address);
        paramList[10] = new SqlParameter("@Status", cu.Status);
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("UpdateCustomerByAdmin", con);
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
