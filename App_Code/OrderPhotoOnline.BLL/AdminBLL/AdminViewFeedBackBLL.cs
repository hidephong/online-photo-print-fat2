﻿using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

/// <summary>
/// Summary description for AdminViewFeedBackBLL
/// </summary>
public class AdminViewFeedBackBLL
{
    AdminViewFeedBackDAL adv = new AdminViewFeedBackDAL();
	public AdminViewFeedBackBLL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable GetFeedBack() 
    {
        return adv.AdminViewFeed();
    }
}
