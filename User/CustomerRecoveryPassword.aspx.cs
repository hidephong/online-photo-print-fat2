using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using MailMessage = System.Web.Mail.MailMessage;

public partial class CustomerRecoveryPassword : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    public string CreatePassword(int PasswordLength)
    {
        string _allowedChars = "abcdefghijk0123456789mnopqrstuvwxyz";
        Random randNum = new Random();
        char[] chars = new char[PasswordLength];
        int allowedCharCount = _allowedChars.Length;

        for (int i = 0; i < PasswordLength; i++)
        {
            chars[i] = _allowedChars[(int)((_allowedChars.Length) * randNum.NextDouble())];
        }
        return new string(chars);
    }

    public string Passencryption(string password)
    {
        UnicodeEncoding encoding = new UnicodeEncoding();
        Byte[] hashBytes = encoding.GetBytes(password);
        // Compute the SHA-1 hash
        SHA1CryptoServiceProvider sha1 = new SHA1CryptoServiceProvider();
        Byte[] cryptPassword = sha1.ComputeHash(hashBytes);
        return BitConverter.ToString(cryptPassword);
    }
    private void UpdatePass(string cid, string password)
    {

        CustomerPasswordRecoveryBLL CPS = new CustomerPasswordRecoveryBLL();
        CPS.updateCustomerPassword(password, cid);
    }
    

    protected void Button1_Click(object sender, EventArgs e)
    {
        string tmp = null;
        CustomerPasswordRecoveryBLL CPS = new CustomerPasswordRecoveryBLL();
         tmp = CPS.GetDataEmail(txtUsername.Text);
        
        if (tmp == txtEmail.Text)
        {
            string newpass=CreatePassword(7);
      
            string from = "hungtv1612@gmail.com";
            string to = txtEmail.Text;
            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            mail.To.Add(to);
            mail.From = new MailAddress(from, "Tran Hung", System.Text.Encoding.UTF8);
            mail.Subject = txtUsername.Text + " password retrieval.";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            string _contentMail = "";
            _contentMail = "<H2>This is a email form Online Order for digital printing of Photos website</H2><br>";
            _contentMail += "<br>Hi: " + txtUsername.Text;
            _contentMail += "<br>this your new password: " + newpass;
            _contentMail += "<br>You should change this password after login";
            _contentMail += "<br><br><hr>Please don't reply this email!";
            _contentMail += "<br><br>Thank you," + "<br /><br/>";
            _contentMail += "MyTeam";
            mail.Body = _contentMail;
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.Normal;
            SmtpClient client = new SmtpClient();
            client.Credentials = new System.Net.NetworkCredential(from, "sad161286");
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            try
            {
                client.Send(mail);
                lblCheckSend.Text = "Mail sended ";
                UpdatePass(txtUsername.Text, newpass);

            }
            catch (Exception ex)
            {
                Exception ex2 = ex;
                while (ex2 != null)
                {
                    lblCheckSend.Text =
                    "Mail could not be sent. ";
                    lblCheckSend.Text += ex2.ToString();
                }
            }

        }
    }
}
