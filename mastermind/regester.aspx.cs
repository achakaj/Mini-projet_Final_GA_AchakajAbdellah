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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString);
        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage msg;
            SqlCommand cmd = new SqlCommand();
            string ActivationUrl = string.Empty;
            string emailId = string.Empty;
            try
        {
            cmd = new SqlCommand("insert into maters (name,city,tel,email,age,cause,achievements,friend,readytotravel,price,problems) values (@name,@city,@tel,@email,@age,@cause,@achievements,@friend,@readytotravel,@price,@problems) ", con);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@city", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@tel", TextBox3.Text.Trim());
            cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
            cmd.Parameters.AddWithValue("@age", TextBox5.Text.Trim());
            cmd.Parameters.AddWithValue("@cause", TextBox6.Text.Trim());
            cmd.Parameters.AddWithValue("@achievements", TextBox7.Text.Trim());
            cmd.Parameters.AddWithValue("@friend", TextBox8.Text.Trim());
            if(RadioButton1.Checked){
            cmd.Parameters.AddWithValue("@readytotravel", "YES");
            }else{
            cmd.Parameters.AddWithValue("@readytotravel", "NO");
            }
            if(RadioButton3.Checked){
            cmd.Parameters.AddWithValue("@price", "I think it should be free");
            }if(RadioButton4.Checked){
            cmd.Parameters.AddWithValue("@price", "Between 3000 and 5000 dirhams");
            }if(RadioButton5.Checked){
            cmd.Parameters.AddWithValue("@price", "Between 5000 and 8000 dirhams");
            }if(RadioButton6.Checked){
            cmd.Parameters.AddWithValue("@price", "Between 8000 and 10,000 dirhams");
            }if(RadioButton7.Checked){
            cmd.Parameters.AddWithValue("@price", "I do not care about the price I am willing to pay any price for that I bring with you");
            }
            cmd.Parameters.AddWithValue("@problems", TextBox9.Text.Trim());
                
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            if (cmd.ExecuteNonQuery()==1)
            {
                
            } 
                cmd = new SqlCommand("insert into maters (name,city,tel,email,age,cause,achievements,friend,readytotravel,price,problems) values (@name,@city,@tel,@email,@age,@cause,@achievements,@friend,@readytotravel,@price,@problems) ", con);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@city", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@tel", TextBox3.Text.Trim());
            cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
            cmd.Parameters.AddWithValue("@age", TextBox5.Text.Trim());
            cmd.Parameters.AddWithValue("@cause", TextBox6.Text.Trim());
            cmd.Parameters.AddWithValue("@achievements", TextBox7.Text.Trim());
            cmd.Parameters.AddWithValue("@friend", TextBox8.Text.Trim());
            if(RadioButton1.Checked){
            cmd.Parameters.AddWithValue("@readytotravel", "YES");
            }else{
            cmd.Parameters.AddWithValue("@readytotravel", "NO");
            }
            if(RadioButton3.Checked){
            cmd.Parameters.AddWithValue("@price", "I think it should be free");
            }if(RadioButton4.Checked){
            cmd.Parameters.AddWithValue("@price", "Between 3000 and 5000 dirhams");
            }if(RadioButton5.Checked){
            cmd.Parameters.AddWithValue("@price", "Between 5000 and 8000 dirhams");
            }if(RadioButton6.Checked){
            cmd.Parameters.AddWithValue("@price", "Between 8000 and 10,000 dirhams");
            }if(RadioButton7.Checked){
            cmd.Parameters.AddWithValue("@price", "I do not care about the price I am willing to pay any price for that I bring with you");
            }
            cmd.Parameters.AddWithValue("@problems", TextBox9.Text.Trim());
                
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            if (cmd.ExecuteNonQuery()==1)
            {
                
            }
            SmtpClient serveur = new SmtpClient("smtp.gmail.com", 587);
            MailMessage message = new MailMessage();

            message.From = new MailAddress(TextBox4.Text);
            message.To.Add(TextBox4.Text);
            message.Subject = "confirmation de l'inscription";
            message.IsBodyHtml = true;
            //message.Body = HttpContext.Current.Request.Url.Host + @"pageconfirmation.aspx?id="+ id;          
            string loginUrl = "http://localhost:2172/results.aspx";


            message.Body = string.Format("please check this link for seeing the results: <a href='{0}'>here</a> to login", loginUrl);
            //  message.Body = "salut " + TextBox1.Text + "Pour confirmer votre inscription cliquer sur " + "<a href=" + "pageconfirmation.aspx?id=" + id + ">xxxxxxxxxxx</a>";
            serveur.EnableSsl = true;

            serveur.UseDefaultCredentials = false;

            serveur.Credentials = new System.Net.NetworkCredential("abdou.achakaj@gmail.com", "achakaj3385");
            serveur.Send(message);
            Response.Write("<div>Message envoyer</div>");
        ////Sending activation link in the email
        //    msg = new MailMessage();
        //    SmtpClient smtp = new SmtpClient();
        //    emailId = TextBox4.Text.Trim();
        //    //sender email address
        //    msg.From = new MailAddress("abdou.achakaj@gmail.com");          
        //    //Receiver email address
        //    msg.To.Add(emailId);
        //    msg.Subject = "Confirmation email for account activation";
            
        //    ActivationUrl = Server.HtmlEncode("http://localhost:2287/ActivateAccount.aspx?UserID=" + FetchIdMaster(emailId) + "&email=" + emailId);

        //    msg.Body = "Hi " + TextBox1.Text.Trim() + "!\n" +
        //          "Thanks for showing interest and registring in <a href=''> webcodeexpert.com<a> " +
        //          " Please <a href='" + ActivationUrl + "'>click here to activate</a>  your account and enjoy our services. \nThanks!";
        //    msg.IsBodyHtml = true;
        //    smtp.Credentials = new NetworkCredential("abdou.achakaj@gmail.com", "achakaj3385");
        //    smtp.Port = 587;
        //    smtp.Host = "smtp.gmail.com";
        //    smtp.EnableSsl = true;
        //    smtp.Send(msg);
        //    clear_controls();
        //    ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Confirmation Link to activate your account has been sent to your email address');", true);
        //}
        ////Sending activation link in the email
        //    msg = new MailMessage();
        //    SmtpClient smtp = new SmtpClient();
        //    emailId = TextBox4.Text.Trim();
        //    //sender email address
        //    msg.From = new MailAddress("abdou.achakaj@gmail.com");          
        //    //Receiver email address
        //    msg.To.Add(emailId);
        //    msg.Subject = "Confirmation email for account activation";
            
        //    ActivationUrl = Server.HtmlEncode("http://localhost:2287/ActivateAccount.aspx?UserID=" + FetchIdMaster(emailId) + "&email=" + emailId);

        //    msg.Body = "Hi " + TextBox1.Text.Trim() + "!\n" +
        //          "Thanks for showing interest and registring in <a href=''> webcodeexpert.com<a> " +
        //          " Please <a href='" + ActivationUrl + "'>click here to activate</a>  your account and enjoy our services. \nThanks!";
        //    msg.IsBodyHtml = true;
        //    smtp.Credentials = new NetworkCredential("abdou.achakaj@gmail.com", "achakaj3385");
        //    smtp.Port = 587;
        //    smtp.Host = "smtp.gmail.com";
        //    smtp.EnableSsl = true;
        //    smtp.Send(msg);
        //    clear_controls();
        //    ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Confirmation Link to activate your account has been sent to your email address');", true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : " + ex.Message.ToString() + "');", true);
            return;
        }
        //finally
        //{
        //    ActivationUrl = string.Empty;
        //    emailId = string.Empty;
        //    con.Close();
        //    cmd.Dispose();
        //}
    } 
    //    private string FetchIdMaster(string email)
    //{
    //    SqlCommand cmd = new SqlCommand();
    //    cmd = new SqlCommand("SELECT UserId FROM masters WHERE email=@email", con);
    //        cmd.Parameters.AddWithValue("@email", email);
    //        if (con.State == ConnectionState.Closed)
    //        {
    //            con.Open();
    //        }
    //        string IdMaster = Convert.ToString(cmd.ExecuteScalar());
    //        con.Close();
    //        cmd.Dispose();
    //        return IdMaster;
    //    }

    //private void clear_controls()
    //{
    //    TextBox1.Text = string.Empty;
    //    TextBox2.Text = string.Empty;
    //    TextBox3.Text = string.Empty;
    //    TextBox4.Text = string.Empty;
    //    TextBox5.Text = string.Empty;
    //    TextBox6.Text = string.Empty;
    //    TextBox7.Text = string.Empty;
    //    TextBox8.Text = string.Empty;
    //    TextBox1.Focus();
    //}
        }
    }
