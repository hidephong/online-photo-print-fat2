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
/// Summary description for CustomerFeedBackDAL
/// </summary>
public class CustomerFeedBackDAL
{
    SqlConnection con;
	public CustomerFeedBackDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int CustAddFeed(CusFeedEnti cfb) 
    {
        int result = 0;
        
        
        SqlParameter[] paramList = new SqlParameter[4];
        paramList[0] = new SqlParameter("@message",cfb.Message);
        
        paramList[1] = new SqlParameter("@date",cfb.Fdate);
       
        paramList[2] = new SqlParameter("@title",cfb.Title);
       
        paramList[3] = new SqlParameter("@cusID",cfb.CusID);
       

        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("CustFeed", con);
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
