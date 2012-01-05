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
/// Summary description for BlockUserDAL
/// </summary>
public class BlockUserDAL
{
    private SqlConnection con;
	public BlockUserDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int UpdateUser(string status, int uid)
    {
        int result = 0;

        SqlParameter[] paramList = new SqlParameter[2];
        paramList[0] = new SqlParameter("Original_UID", uid);
        paramList[1] = new SqlParameter("@Status",status);
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("updateUserStatus", con);
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
    

     public int DeleteUser(UserEntity ue)
    {
        int result = 0;

        SqlParameter[] paramList = new SqlParameter[1];
        paramList[0] = new SqlParameter("Original_UID", ue.UID);
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("DeleteUser", con);
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

    public DataTable getUserDataByID(int uid)
    {
        SqlParameter[] paramList = new SqlParameter[1];
        paramList[0] = new SqlParameter("@id", uid);
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlDataAdapter adt = new SqlDataAdapter("getUserDataByID", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        adt.Fill(ds);
        return ds.Tables[0];
    }
}
