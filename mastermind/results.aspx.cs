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
    public partial class WebForm4 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ActivateMyAccount();
            }
        }
        private void ActivateMyAccount()
        {
            SqlConnection con = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            try
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString);

                if ((!string.IsNullOrEmpty(Request.QueryString["IdMaster"])) & (!string.IsNullOrEmpty(Request.QueryString["email"])))
                {   //approve account by setting Is_Approved to 1 i.e. True in the sql server table
                    cmd = new SqlCommand("UPDATE masters SET Is_Approved=1 WHERE IdMaster=@IdMaster AND email=@email", con);
                    cmd.Parameters.AddWithValue("@IdMaster", Request.QueryString["IdMaster"]);
                    cmd.Parameters.AddWithValue("@email", Request.QueryString["email"]);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    cmd.ExecuteNonQuery();
                    Response.Write("You account has been activated.we will show here the results soon... thank you and good luck!! ");
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : " + ex.Message.ToString() + "');", true);
                return;
            }
            finally
            {
                con.Close();
                cmd.Dispose();
            }
        }
    }
}