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
/// Summary description for AdminViewOrderDAL
/// </summary>
public class AdminViewOrderDAL
{
    SqlConnection con;
	public AdminViewOrderDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable GetOrder() 
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlDataAdapter adt = new SqlDataAdapter("GetOrder", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        adt.Fill(ds);
        return ds.Tables[0];
    }
    public DataTable GetOrderBy(int ordID) 
    {
        SqlParameter[] paramlist = new SqlParameter[1];
        paramlist[0] = new SqlParameter("@orderid", SqlDbType.Int);
        paramlist[0].Value = ordID;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlDataAdapter adt = new SqlDataAdapter("GetOrderBy", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        adt.SelectCommand.Parameters.AddRange(paramlist); 
        DataSet ds = new DataSet();
        adt.Fill(ds);
        con.Close();
        return ds.Tables[0];
    }
}
