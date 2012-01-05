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
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Summary description for UserMenuBLL
/// </summary>
public class UserMenuBLL
{
    UserMenuDAL umd = new UserMenuDAL(); 
	public UserMenuBLL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public ArrayList getMenuList() {
        ArrayList lst = new ArrayList();
        DataTable dt = new DataTable();
        dt = umd.GetMenu();
        UserMenu um = new UserMenu();
        for (int i = 0; i < dt.Rows.Count; i++) {
            um = new UserMenu();
            um.MName = dt.Rows[i]["MName"].ToString();
            um.MLink = dt.Rows[i]["MLink"].ToString();
            um.MTitle = dt.Rows[i]["MTitle"].ToString();
            um.MParent =Convert.ToInt32( dt.Rows[i]["MParent"].ToString());
            um.MStatus =Convert.ToBoolean(dt.Rows[i]["MEnable"].ToString());
            lst.Add(um);
        }
        return lst;
    }
}
