using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;
using System.Web.Configuration;

/// <summary>
/// Summary description for DataConnection
/// </summary>
public class DataConnection
{
    SqlConnection Connect;

	public DataConnection()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public SqlConnection Open()
    {
        try
        {
            Connect = new SqlConnection(WebConfigurationManager.ConnectionStrings["OODPPConn"].ConnectionString);
            if (Connect.State == System.Data.ConnectionState.Open)
            {
                Connect.Close();
                Connect.Open();
            }
            else 
            {
                Connect.Open();
            }
        }
        catch (Exception)
        {
            Connect = null;
        }
        return Connect;
    }
     
    public void Close()
    {
        Connect.Close();
    }
}