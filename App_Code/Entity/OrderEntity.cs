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
/// Summary description for OrderEntity
/// </summary>
public class OrderEntity
{
	public OrderEntity()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    int purchaseOrderNo;

    public int PurchaseOrderNo
    {
        get { return purchaseOrderNo; }
        set { purchaseOrderNo = value; }
    }
    int timeToComplex;

    public int TimeToComplex
    {
        get { return timeToComplex; }
        set { timeToComplex = value; }
    }
    DateTime createOrder;

    public DateTime CreateOrder
    {
        get { return createOrder; }
        set { createOrder = value; }
    }
    DateTime dateComplex;

    public DateTime DateComplex
    {
        get { return dateComplex; }
        set { dateComplex = value; }
    }
    int oStatus;

    public int OStatus
    {
        get { return oStatus; }
        set { oStatus = value; }
    }
}
