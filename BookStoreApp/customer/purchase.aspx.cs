using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookStoreApp.customer
{
    public partial class purchase : System.Web.UI.Page
    {
        static SqlConnection con;
        static SqlCommand cmd;
        static string constr = "server=localhost;database=BookStore_Mangement;trusted_connection=true;";
        static SqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!Page.IsPostBack)
            {
                PurchasePanel.Visible = false;
                LblBook.Visible = false;
                LblAuthor.Visible = false;
                LblGenre.Visible = false;
                LblPrice.Visible = false;
                LblPublisher.Visible = false;
                LblId.Visible = false;
               
            }
        }
        protected void SearchBtn_Click(object sender, EventArgs e)
        {

            try
            {
                con = new SqlConnection(constr);
                cmd = new SqlCommand("customer", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();

                cmd.Parameters.Add(new SqlParameter("@book_name", SqlDbType.VarChar, 50)).Value = TxtSearch.Text;
              
                reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        



                        PurchasePanel.Visible = true;
                        LblId.Visible = true;
                        LblBook.Visible = true;
                        LblAuthor.Visible = true;
                        LblGenre.Visible = true;
                        LblPrice.Visible = true;
                        LblPublisher.Visible = true;

                        LblId.Text = reader[0].ToString();
                        LblBook.Text = reader[1].ToString();
                        LblAuthor.Text = reader[2].ToString();
                        LblGenre.Text = reader[3].ToString();
                        LblPrice.Text= reader[4].ToString();
                        LblPublisher.Text = reader[5].ToString();  
                        CoverImg.ImageUrl = reader[6].ToString();
                    }





                }
                else
                {
                    LblMsg.Text = "No records found";
                    PurchasePanel.Visible = false;
                }

            }
            catch (Exception ex)
            {
                LblMsg.Text = "Error!!" + ex.Message;
            }
            finally
            {
                con.Close();
            }

        }

        //protected void cartBtn_Click(object sender, EventArgs e)
        //{
        //    double order
        //}
    }
}


