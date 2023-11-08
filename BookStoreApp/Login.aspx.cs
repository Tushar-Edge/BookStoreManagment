using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;


namespace BookStoreApp
{
   
        public partial class Login : System.Web.UI.Page
        {
            SqlConnection con;
            SqlCommand cmd;
            SqlDataReader srdr;
            string cons = "server=localhost;database=BookStore_Mangement;trusted_connection=true";
            protected void Page_Load(object sender, EventArgs e)
            {
                LblMsg.Visible = false;
                Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            }
            protected void btnLogin_Click(object sender, EventArgs e)
            {
                string userrole = "";
                string username = "";
                try
                {
                    con = new SqlConnection(cons);
                    cmd = new SqlCommand();
                    cmd.CommandText
                 = "select username,user_role from Users where username=@un and password=@up";
                    cmd.Parameters.Add("@un", SqlDbType.NVarChar, 100).Value = txtUsername.Text.Trim();
                    cmd.Parameters.Add("@up", SqlDbType.NVarChar, 50).Value = txtPassword.Text;
                    cmd.Connection = con;
                    con.Open();
                    srdr = cmd.ExecuteReader();
                    if (srdr.HasRows)
                    {
                        while (srdr.Read())
                        {
                            username = srdr["username"].ToString();
                            userrole = srdr["user_role"].ToString();
                        }
                        FormsAuthenticationTicket ticket =
                            new FormsAuthenticationTicket(
                           1, // Ticket version
                           username,// Username to be associated with this ticket
                           DateTime.Now, // Date/time ticket was issued
                           DateTime.Now.AddMinutes(5), // Date and time the cookie will expire
                           true, // if user has chcked rememebr me then create persistent cookie
                           userrole, // store the user data, in this case roles of the user
                           FormsAuthentication.FormsCookiePath); // Cookie path specified in the web.config file in <Forms> tag if any.
                                                                 // To give more security it is suggested to hash it
                        string hashCookies = FormsAuthentication.Encrypt(ticket);
                        HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, hashCookies); // Hashed ticket
                                                                                                              // Add the cookie to the response, user browser
                        Response.Cookies.Add(cookie);
                        // Get the requested page from the url
                        string returnUrl = Request.QueryString["ReturnUrl"];
                        Console.WriteLine(returnUrl);
                        if (returnUrl == null)
                        {
                            returnUrl =   "Default.aspx";
                        }
                        Response.Redirect(returnUrl);
                    }
                    else
                    {
                        LblMsg.Visible = true;
                        LblMsg.Text = "Invalid username or password";
                    }
                }
                catch (SqlException se)
                {
                    LblMsg.Visible = true;
                    LblMsg.Text = "Server Error!!!" + se.Message;
                }
                catch (Exception ee)
                {
                    LblMsg.Visible = true;
                    LblMsg.Text = "App Error!!!" + ee.Message;
                }
                finally
                {
                    con.Close();
                }
            }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
   
}

