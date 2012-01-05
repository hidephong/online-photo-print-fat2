using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlTypes;

/// <summary>
/// Summary description for CustomerRegister
/// </summary>
public class CustomerLoginBLL
{
    CustomerLoginDAL cuslo = new CustomerLoginDAL();
	public CustomerLoginBLL()
	{
		//
		// TODO: Add constructor logic here
		//

	}
   // DataConnection dtconn = new DataConnection();
  
  
 
     



        public bool CustLogin(string user, string pass) 
        {
            bool bl = false;
            Libs libs = new Libs();
            Customer cu = new Customer();
            cu.Username = user;
            cu.Password = libs.password2md5(pass);
            try
            {
                int chk = cuslo.login(cu);
                if (chk > 0) { bl = true; }
            }
            finally
            {
            }
            
            return bl;
        }
        public string GetCustID(string user, string pass) 
        {
           
             Libs libs = new Libs();
           
             Customer cu = new Customer();
             cu.Username = user;
             cu.Password = libs.password2md5(pass);
             return cuslo.GetCusID(cu);
        }
       


}
