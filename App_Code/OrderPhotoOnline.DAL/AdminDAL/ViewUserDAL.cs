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
/// Summary description for ViewUserDAL
/// </summary>
public class ViewUserDAL
{
	public ViewUserDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    SqlConnection con;

    public DataTable getDataUser()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlDataAdapter adt = new SqlDataAdapter("viewuser", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        adt.Fill(ds);
        return ds.Tables[0];
    }
}
