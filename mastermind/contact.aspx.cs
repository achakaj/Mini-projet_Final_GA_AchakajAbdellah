using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Net;
using System.Net.Mail;

namespace mastermind
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SendMail()
        {
            // Gmail Address from where you send the mail
            var fromAddress = "abdou.achakaj@gmail.com";
            // any address where the email will be sending
            var toAddress = TextBox2.Text.ToString();
            //Password of your gmail address
            const string fromPassword = "achakaj3385";
            // Passing the values and make a email formate to display
            string subject = TextBox3.Text.ToString();
            string body = "From: " + TextBox1.Text + "\n";
            body += "Email: " + TextBox2.Text + "\n";
            body += "Subject: " + TextBox3.Text + "\n";
            
            // smtp settings
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }
            // Passing values to smtp object
            smtp.Send(fromAddress, toAddress, subject, body);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SendMail();
            TextBox3.Text = "Your Comments after sending the mail";
            TextBox3.Visible = true;
            TextBox3.Text = "";
            TextBox2.Text = "";
            TextBox1.Text = "";
            
        }
    }
}