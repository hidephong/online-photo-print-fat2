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
/// Summary description for AddUserDAL
/// </summary>
public class AddUserDAL
{
	
    private SqlConnection con;
  
    public AddUserDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int AddUser(UserEntity ue)
    {
        int result = 0;

        SqlParameter[] paramList = new SqlParameter[6];
        paramList[0] = new SqlParameter("@UFullname",ue.UFullname);
        paramList[1] = new SqlParameter("@UUsername",ue.UUsername);
        paramList[2] = new SqlParameter("@UPassword", ue.UPassword);
        paramList[3] = new SqlParameter("@UEmail", ue.UEmail);
        paramList[4] = new SqlParameter("@UAddress",ue.UAddress);
        paramList[5] = new SqlParameter("@UDOB", ue.UDOB);

        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("addUser", con);
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
