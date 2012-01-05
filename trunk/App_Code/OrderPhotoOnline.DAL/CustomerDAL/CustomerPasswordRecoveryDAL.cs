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
/// Summary description for CustomerPasswordRecoveryDAL
/// </summary>
public class CustomerPasswordRecoveryDAL
{
    SqlConnection con;
	public CustomerPasswordRecoveryDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int UpdateCustomerPass(Customer cu)
    {
        int result = 0;
        SqlParameter[] paramList = new SqlParameter[11];
        paramList[0] = new SqlParameter("@Original_CusID", cu.CustID);
        paramList[2] = new SqlParameter("@Pass", cu.Password);
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("CustomerUpd", con);
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

    public string getEmailCustomerByUsername(string us)
    {

        SqlParameter[] paramList = new SqlParameter[1];
        paramList[0] = new SqlParameter("@Username", us);
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlDataAdapter adt = new SqlDataAdapter("getEmailByUsername", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        adt.SelectCommand.Parameters.AddRange(paramList);
        DataSet ds = new DataSet();
        adt.Fill(ds);
        return ds.Tables[0].Rows[0]["CustEmail"].ToString();
    }
    public string getCustomerIDByUsername(string us)
    {

        SqlParameter[] paramList = new SqlParameter[1];
        paramList[0] = new SqlParameter("@Username", us);
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlDataAdapter adt = new SqlDataAdapter("getEmailByUsername", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        adt.SelectCommand.Parameters.AddRange(paramList);
        DataSet ds = new DataSet();
        adt.Fill(ds);
        return ds.Tables[0].Rows[0]["CustID"].ToString();
    }
}
