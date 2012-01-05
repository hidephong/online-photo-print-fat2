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
/// Summary description for CustomerLoginDAL
/// </summary>
public class CustomerLoginDAL
{
    SqlConnection con;
	public CustomerLoginDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int login(Customer cus) 
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlParameter[] paramlist = new SqlParameter[2];
        paramlist[0] = new SqlParameter("@usernam",cus.Username);
        paramlist[1] = new SqlParameter("@custpass",cus.Password);
        SqlDataAdapter adt = new SqlDataAdapter("Cuslogin", con);
        adt.SelectCommand.CommandType = CommandType.StoredProcedure;
        adt.SelectCommand.Parameters.AddRange(paramlist);
        DataSet ds = new DataSet();
        adt.Fill(ds);
        con.Close();
        if (ds.Tables[0].Rows.Count > 0)
        {
            int idreturn = Convert.ToInt32(ds.Tables[0].Rows[0]["CusID"].ToString());
            return idreturn;
        }
        else
        {
            return -1;
        }
    }
    public string GetCusID(Customer cus) 
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["OODPPConnectionString"].ConnectionString);
        con.Open();
        SqlParameter[] paramlist = new SqlParameter[2];
        paramlist[0] = new SqlParameter("@usernam", cus.Username);
        paramlist[1] = new SqlParameter("@custpass", cus.Password);
        SqlCommand cmd = new SqlCommand("Cuslogin", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddRange(paramlist);
        string aa = cmd.ExecuteScalar().ToString();
        return aa;
    }

}
