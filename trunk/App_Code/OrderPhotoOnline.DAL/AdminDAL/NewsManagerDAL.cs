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
/// Summary description for NewsManagerDAL
/// </summary>
public class NewsManagerDAL
{
    SqlConnection con; 
	public NewsManagerDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable GetNews() 
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlDataAdapter adt = new SqlDataAdapter("getnews", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        DataSet ds = new DataSet();
        adt.Fill(ds);
        con.Close();
        return ds.Tables[0];
    }
    public void UpdateNews(NewsEnti ne) 
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlDataAdapter adt = new SqlDataAdapter("updatenews", con);
        SqlParameter[] paramlist = new SqlParameter[6];
        paramlist[0] = new SqlParameter("@NeID",ne.NeID);
        paramlist[1] = new SqlParameter("@NeTitle", ne.NeTitle);
        paramlist[2] = new SqlParameter("@NeContent", ne.NeContent);
        paramlist[3] = new SqlParameter("@NeSubj", ne.NeSubj);
        paramlist[4] = new SqlParameter("@NeHot", ne.NeHot);
        paramlist[5] = new SqlParameter("@NeStatus", ne.NeStatus);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        adt.SelectCommand.Parameters.AddRange(paramlist);

        DataSet ds = new DataSet();
        adt.Fill(ds);
        con.Close();

    }
    public void Deletenew(int id) 
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from News where NID = @Nid", con);
        cmd.Parameters.AddWithValue("@Nid",id);
        cmd.ExecuteReader();
        con.Close();
    }

}
