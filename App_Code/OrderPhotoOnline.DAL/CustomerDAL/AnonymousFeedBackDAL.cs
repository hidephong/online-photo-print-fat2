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
/// Summary description for AnonymousFeedBack
/// </summary>
public class AnonymousFeedBackDAL
{
    private SqlConnection con;
   

	public AnonymousFeedBackDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
   
    public int InsertFeed(FeedBackEnti fb)
    {
        int result = 0;
        SqlParameter[] paramList = new SqlParameter[4];
        paramList[0] = new SqlParameter("@message", SqlDbType.NVarChar);
        paramList[0].Value = fb.Message;
        paramList[1] = new SqlParameter("@date", SqlDbType.DateTime);
        paramList[1].Value = fb.Date;
        paramList[2] = new SqlParameter("@email", SqlDbType.NVarChar, 50);
        paramList[2].Value = fb.Email;
        paramList[3] = new SqlParameter("@name", SqlDbType.NVarChar, 50);
        paramList[3].Value = fb.Name;
        
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insertFeed", con);
       
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
