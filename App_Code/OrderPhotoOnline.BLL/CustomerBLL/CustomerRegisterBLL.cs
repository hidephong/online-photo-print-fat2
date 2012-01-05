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
public class CustomerRegisterBLL
{
    CustomerRegisterDAL cus = new CustomerRegisterDAL();
	public CustomerRegisterBLL()
	{
		//
		// TODO: Add constructor logic here
		//

	}
   // DataConnection dtconn = new DataConnection();
  

        
        public bool AddCustomer(string UserNam,string pass, string Fname, string Lname,string email,DateTime date,string gender,string phone,string addr,string status)
        {
            // Create a new Admin instance
            CusRegEnti cuenti = new CusRegEnti();
            Libs libs = new Libs();

            cuenti.UserName = UserNam;
            cuenti.Pass = libs.password2md5(pass);
            cuenti.FName = Fname;
            cuenti.LName = Lname;
            cuenti.CuEmail = email;
            cuenti.Date = date;
            cuenti.Gender = gender;
            cuenti.Addr = addr;
            cuenti.PhoneNO = phone;
            cuenti.Status = status;


            int ireturn = cus.InsertCus(cuenti);
            return ireturn > 0;
        }

       


}
