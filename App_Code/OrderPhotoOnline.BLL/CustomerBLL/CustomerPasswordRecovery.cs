using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for AdminBAL
/// </summary>
/// 

[System.ComponentModel.DataObject]
public class CustomerPasswordRecoveryBLL
{
    CustomerPasswordRecoveryDAL cprDAL = new CustomerPasswordRecoveryDAL();
    public CustomerPasswordRecoveryBLL()
    {
        //
        // TODO: Add constructor logic here
        //
    }




     public string GetDataEmail(string username)
        {
            return cprDAL.getEmailCustomerByUsername(username);
        }

    public int updateCustomerPassword(string pass,string user )
    {
        Libs libs = new Libs();
        Customer cu = new Customer();
        cu.CustID =Convert.ToInt32( cprDAL.getCustomerIDByUsername(user));
        cu.Password = libs.password2md5(pass);
        return cprDAL.UpdateCustomerPass(cu);
    }




    }
