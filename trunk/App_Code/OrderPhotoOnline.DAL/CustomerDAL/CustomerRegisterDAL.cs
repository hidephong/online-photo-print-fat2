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
/// Summary description for CustomerRegister
/// </summary>
public class CustomerRegisterDAL
{
    SqlConnection con;
	public CustomerRegisterDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int InsertCus(CusRegEnti cus) 
    {
        int result = 0;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlParameter[] paramlist = new SqlParameter[10];
        paramlist[0] = new SqlParameter("@userName",cus.UserName);
        paramlist[1] = new SqlParameter("@pass",cus.Pass);
        paramlist[2] = new SqlParameter("@FName", cus.FName);
        paramlist[3] = new SqlParameter("@LName", cus.LName);
        paramlist[4] = new SqlParameter("@CuEmail", cus.CuEmail);
        paramlist[5] = new SqlParameter("@Date", cus.Date);
        paramlist[6] = new SqlParameter("@Gender", cus.Gender);
        paramlist[7] = new SqlParameter("@PhoneNO", cus.PhoneNO);
        paramlist[8] = new SqlParameter("@Addr", cus.Addr);
        paramlist[9] = new SqlParameter("@Status", cus.Status);

        SqlCommand cmd = new SqlCommand("CreateCustomer", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddRange(paramlist);
       
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
