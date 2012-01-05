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
/// Summary description for ImageUpload
/// </summary>
public class ImageUploadDAL
{

    private SqlConnection con;
    private SqlDataAdapter adt;
	public ImageUploadDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable GetImages()
    {
        SqlParameter[] paramList = new SqlParameter[1];
        paramList[0] = new SqlParameter("@CILID", SqlDbType.Bit);
        paramList[0].Value = 1;
        DataSet ds = new DataSet();
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        adt = new SqlDataAdapter("getImage", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        adt.SelectCommand.Parameters.AddRange(paramList);
        adt.Fill(ds);
        con.Close();
        return ds.Tables[0];
    }
    public int setImage(UseImgLink uil)
    {
        int result = 0;


        SqlParameter[] paramList = new SqlParameter[2];
        paramList[0] = new SqlParameter("@ImageLink", uil.ImageLink);
        paramList[1] = new SqlParameter("@CustID", uil.CustID);
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("addImg", con);
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
