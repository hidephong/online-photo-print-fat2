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
/// Summary description for AdminDAL
/// </summary>
public class AdminDAL
{
	public AdminDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    SqlConnection con;

    public DataTable getDataAdmin() 
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlDataAdapter adt = new SqlDataAdapter("GetDataAdmin", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        adt.Fill(ds);
        return ds.Tables[0];
    }
    public DataTable getDataAdminByID(int aID) 
    {
        SqlParameter[] paramlist = new SqlParameter[1];
        paramlist[0] = new SqlParameter("@AID", SqlDbType.Int);
        paramlist[0].Value = aID;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlDataAdapter adt = new SqlDataAdapter("getDataAdminByID", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        adt.SelectCommand.Parameters.AddRange(paramlist); 
        DataSet ds = new DataSet();
        adt.Fill(ds);
        con.Close();
        return ds.Tables[0];
    }

    public int getIDByUserAndPass(string aUser,string aPass)
    {
        SqlParameter[] paramlist = new SqlParameter[2];
        paramlist[0] = new SqlParameter("@AUser", SqlDbType.NVarChar);
        paramlist[0].Value = aUser;
        paramlist[1] = new SqlParameter("@APass", SqlDbType.NVarChar);
        paramlist[1].Value = aPass;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();

        SqlDataAdapter adt = new SqlDataAdapter("getIDByUserAndPass", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        adt.SelectCommand.Parameters.AddRange(paramlist);
        DataSet ds = new DataSet();
        adt.Fill(ds);
        con.Close();
        int idreturn =Convert.ToInt32(ds.Tables[0].Rows[0]["AID"].ToString());
        return idreturn;
    }
    public int UpdateAdmin(Admin ad)
    {
        int result = 0;

        SqlParameter[] paramList = new SqlParameter[4];
        paramList[0] = new SqlParameter("@Original_AID", ad.AID);
        paramList[1] = new SqlParameter("@AFullname", ad.AFullname);
        paramList[2] = new SqlParameter("@AUsername", ad.AUsername);
        paramList[3] = new SqlParameter("@APassword", ad.APassword1);
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("updateAdmin", con);
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
