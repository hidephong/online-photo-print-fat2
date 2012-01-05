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
public class AdminBLL
{
    AdminDAL adal = new AdminDAL();
    public AdminBLL()
    {
        //
        // TODO: Add constructor logic here
        //
    }


    public bool GetLogin(string userName, string passWord)
    {
        bool blRet = false;
        AdminBLL adminbll = new AdminBLL();
        try
        {
            Libs libs = new Libs();
           int aTbl = adminbll.GetIDByUserAndPass(userName, passWord);
            if (aTbl > 0) { blRet = true; }
        }
        finally
        {
        }

        return blRet;
    }

    public int GetIDByUserAndPass(string strUser, string strPass)
    {
        Libs libs = new Libs();
        return adal.getIDByUserAndPass(strUser, libs.password2md5(strPass));
    }

    

    }
