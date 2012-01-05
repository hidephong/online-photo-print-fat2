using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Security.Cryptography;
using System.Text;

/// <summary>
/// Summary description for Libs
/// </summary>
public class Libs
{
	public Libs()
	{
		//
		// TODO: Add constructor logic here
		//
	}
public string MkPassword() {
            Random random = new Random();
            string strpass = random.Next(100000, 999999).ToString();
            return strpass;   
	}
    public string password2md5(string data) { 

    MD5CryptoServiceProvider MD5 = new MD5CryptoServiceProvider();

    byte[] b = System.Text.Encoding.UTF8.GetBytes(data);

    b = MD5.ComputeHash(b);

    StringBuilder s = new StringBuilder();

    foreach (byte p in b)

    {

    s.Append(p.ToString("x").ToLower());

    }

    return s.ToString();

    }

    //public static string CreatePasswordHash(string pwd)
    //{
    //    return FormsAuthentication.HashPasswordForStoringInConfigFile(pwd, "MD5");
    //}
    //public static string password(string cpass)
    //{
    //    byte[] pass = Encoding.UTF8.GetBytes(cpass);
    //    MD5 md5 = new MD5CryptoServiceProvider();
    //    string strPassword = Encoding.UTF8.GetString(md5.ComputeHash(pass));
    //    return strPassword;
    //}
    public bool checksession(string session){
        if (session != null) { return false; }
        return true;
    
    }
}

