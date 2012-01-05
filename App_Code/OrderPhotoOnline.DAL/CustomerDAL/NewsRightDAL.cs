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
/// Summary description for NewsRightDAL
/// </summary>
public class NewsRightDAL
{
    private SqlConnection con;
    private SqlDataAdapter adt;
	public NewsRightDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable GetNews()
    {
        SqlParameter[] paramList = new SqlParameter[1];
        paramList[0] = new SqlParameter("@mStatus", SqlDbType.Bit);
        paramList[0].Value = 1;
        DataSet ds = new DataSet();
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        adt = new SqlDataAdapter("getHotNews", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        adt.SelectCommand.Parameters.AddRange(paramList);
        adt.Fill(ds);
        con.Close();
        return ds.Tables[0];
    }
}
