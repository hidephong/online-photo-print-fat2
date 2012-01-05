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
/// Summary description for AdminViewFeedBackDAL
/// </summary>
public class AdminViewFeedBackDAL
{
    SqlConnection con;
	public AdminViewFeedBackDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable AdminViewFeed() 
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlDataAdapter adt = new SqlDataAdapter("AdminViewFeed", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        adt.Fill(ds);
        con.Close();
        return ds.Tables[0];      
    }

}
