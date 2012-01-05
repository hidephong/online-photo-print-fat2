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
/// Summary description for UserMenuDAL
/// </summary>
public class UserMenuDAL
{
    private SqlConnection con;
    private SqlDataAdapter adt;
	public UserMenuDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable GetMenu()
    {
        SqlParameter[] paramList = new SqlParameter[1];
        paramList[0] = new SqlParameter("@mStatus", SqlDbType.Bit);
        paramList[0].Value = 1;
        DataSet ds = new DataSet();
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        adt = new SqlDataAdapter("getAllmenu", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        adt.SelectCommand.Parameters.AddRange(paramList);
        adt.Fill(ds);
        con.Close();
        return ds.Tables[0];
    }
}
