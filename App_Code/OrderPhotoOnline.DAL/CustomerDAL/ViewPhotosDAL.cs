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
/// Summary description for ViewPhotosDAL
/// </summary>
public class ViewPhotosDAL
{
    private SqlConnection con;
    private SqlDataAdapter adt;
	public ViewPhotosDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable getPicture(int CustID)
    {
        SqlParameter[] paramList = new SqlParameter[1];
        paramList[0] = new SqlParameter("@CustID", SqlDbType.Int);
        paramList[0].Value = CustID;
        DataSet ds = new DataSet();
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        adt = new SqlDataAdapter("getPicture", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        adt.SelectCommand.Parameters.AddRange(paramList);
        adt.Fill(ds);
        con.Close();
        return ds.Tables[0];
    }
    public UseImgLink getPictureByCilid(int CustID, int cilid)
    {
        UseImgLink uil = new UseImgLink();
        SqlParameter[] paramList = new SqlParameter[2];
        paramList[0] = new SqlParameter("@CustID", SqlDbType.Int);
        paramList[0].Value = CustID;
        paramList[1] = new SqlParameter("@cilid", SqlDbType.Int);
        paramList[1].Value = cilid;
        DataSet ds = new DataSet();
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        adt = new SqlDataAdapter("getPictureByCilid", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        adt.SelectCommand.Parameters.AddRange(paramList);
        adt.Fill(ds);
        con.Close();
        uil.CILID = Convert.ToInt32(ds.Tables[0].Rows[0]["CILID"].ToString());
        uil.CustID = Convert.ToInt32(ds.Tables[0].Rows[0]["CustID"].ToString());
        uil.ImageLink = ds.Tables[0].Rows[0]["CustID"].ToString();
        return uil;
    } 
}
