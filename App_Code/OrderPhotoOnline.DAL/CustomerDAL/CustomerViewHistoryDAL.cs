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
/// Summary description for CustomerViewHistory
/// </summary>
public class CustomerViewHistoryDAL
{
	public CustomerViewHistoryDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable GetHistory(int custid) 
    {
        SqlParameter[] param = new SqlParameter[1];
        param[0] = new SqlParameter("@custID",SqlDbType.Int);
        param[0].Value = custid;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlDataAdapter adt = new SqlDataAdapter("GetOrderByCustID",con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        adt.SelectCommand.Parameters.AddRange(param);
        DataSet ds = new DataSet();
        adt.Fill(ds);
        return ds.Tables[0];
    }
}
