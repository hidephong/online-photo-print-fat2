using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Customer
{
    public Customer()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public Customer(int cID, string user, string pass)
    {
        CustID = cID;
        Username = user;
        Password = pass;
    }
    public Customer(string user, string pass)
    {

        Username = user;
        Password = pass;
    }
    int custID;

    public int CustID
    {
        get { return custID; }
        set { custID = value; }
    }
    string username;

    public string Username
    {
        get { return username; }
        set { username = value; }
    }
    string password;

    public string Password
    {
        get { return password; }
        set { password = value; }
    }


    string firstName;

    public string FirstName
    {
        get { return firstName; }
        set { firstName = value; }
    }
    string lastName;

    public string LastName
    {
        get { return lastName; }
        set { lastName = value; }
    }
    string custEmail;

    public string CustEmail
    {
        get { return custEmail; }
        set { custEmail = value; }
    }
    DateTime dateOB;

    public DateTime DateOB
    {
        get { return dateOB; }
        set { dateOB = value; }
    }
    string gender;

    public string Gender
    {
        get { return gender; }
        set { gender = value; }
    }
    string phoneNO;

    public string PhoneNO
    {
        get { return phoneNO; }
        set { phoneNO = value; }
    }
    string address;

    public string Address
    {
        get { return address; }
        set { address = value; }
    }
    string status;

    public string Status
    {
        get { return status; }
        set { status = value; }
    }
   
}
