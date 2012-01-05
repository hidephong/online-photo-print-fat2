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
/// Summary description for UpdateUserDAL
/// </summary>
public class UpdateUserDAL
{
    private SqlConnection con;

	public UpdateUserDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int UpdateUser(UserEntity ue)
    {
        int result = 0;

        SqlParameter[] paramList = new SqlParameter[8]; 
        paramList[0] = new SqlParameter("Original_UID", ue.UID);
        paramList[1] = new SqlParameter("@UFullname", ue.UFullname);
        paramList[2] = new SqlParameter("@UUsername", ue.UUsername);
        paramList[3] = new SqlParameter("@UPassword", ue.UPassword);
        paramList[4] = new SqlParameter("@UEmail", ue.UEmail);
        paramList[5] = new SqlParameter("@UAddress", ue.UAddress);
        paramList[6] = new SqlParameter("@UDOB", ue.UDOB);
        paramList[7] = new SqlParameter("@Status", ue.Status);
       
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("UpdateUser", con);
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

    public int getIDbyUsername(string us)
    {
        SqlParameter[] paramList = new SqlParameter[1];
        paramList[0] = new SqlParameter("@username", us);
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlDataAdapter adt = new SqlDataAdapter("getIDbyUsername", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        adt.SelectCommand.Parameters.AddRange(paramList);
        DataSet ds = new DataSet();
        adt.Fill(ds);
        int ireturn = Convert.ToInt32(ds.Tables[0].Rows[0]["UID"].ToString());
        return ireturn;

    }

    public DataTable getUserDataByID(int uid)
    {
        SqlParameter[] paramList = new SqlParameter[1];
        paramList[0] = new SqlParameter("@id", uid);
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlDataAdapter adt = new SqlDataAdapter("getUserDataByID", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        adt.SelectCommand.Parameters.AddRange(paramList);
        DataSet ds = new DataSet();
        adt.Fill(ds);
        return ds.Tables[0];
    }
}
