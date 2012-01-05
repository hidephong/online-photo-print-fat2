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
/// Summary description for ViewCostBySize
/// </summary>
public class ViewCostBySizeDAL
{
    private SqlConnection con;
    private SqlDataAdapter adt;
	public ViewCostBySizeDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable GetCost(string PSCID)
    {
        SqlParameter[] paramList = new SqlParameter[1];
        paramList[0] = new SqlParameter("@PSCID", SqlDbType.NVarChar);
        paramList[0].Value = PSCID;
        DataSet ds = new DataSet();
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        adt = new SqlDataAdapter("getCost", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        adt.SelectCommand.Parameters.AddRange(paramList);
        adt.Fill(ds);
        con.Close();
        return ds.Tables[0];
    }
    public DataTable GetCosts()
    {
       
        DataSet ds = new DataSet();
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        adt = new SqlDataAdapter("getCosts", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        adt.Fill(ds);
        con.Close();
        return ds.Tables[0];
    }
}
