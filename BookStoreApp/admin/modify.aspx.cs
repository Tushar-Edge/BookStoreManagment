
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookStoreApp.admin
{
    public partial class modify : System.Web.UI.Page
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
                UpdatePanel.Visible = false;
                LblMsg.Visible = false;
                LblId.Visible = false;
            }
        }
        protected void SearchBtn_Click(object sender, EventArgs e)
        {

            try
            {
                con = new SqlConnection(constr);
                cmd = new SqlCommand("getPriceStock", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();

                cmd.Parameters.Add(new SqlParameter("@book_name", SqlDbType.VarChar, 50)).Value=TxtSearch.Text;
                LblId.Visible = true;
             
                reader = cmd.ExecuteReader();
               
                if (reader.HasRows)
                {
                    while(reader.Read())
                    {
                        UpdatePanel.Visible = true;

                        LblId.Visible = true;
                      
                        LblId.Text = reader[0].ToString();
                        TxtBook.Text = reader[1].ToString();
                        TxtPrice.Text = reader[2].ToString();
                        TxtStock.Text = reader[3].ToString();
                        CoverImage.ImageUrl = reader[4].ToString();
                    }

                   
                  


                }
                else
                {
                    LblMsg.Text = "No records found";
                    UpdatePanel.Visible = false;
                }

            }
            catch (Exception ex)
            {
                LblMsg.Text = "Error!!" + ex.Message;
            }
            finally { 
                con.Close(); }

        }






        protected void UpdateBtn_Click(object sender, EventArgs e)
        {

            LblMsg.Visible = true;
            try
            {

                cmd = new SqlCommand("updateStock", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                cmd.Parameters.Add(new SqlParameter("@book_id", SqlDbType.VarChar, 50)).Value = LblId.Text;
                cmd.Parameters.Add(new SqlParameter("@price", SqlDbType.Decimal)).Value = TxtPrice.Text;
                cmd.Parameters.Add(new SqlParameter("@quantity", SqlDbType.Int)).Value = TxtStock.Text;
                int rowsAffected = cmd.ExecuteNonQuery();
                LblMsg.Text = rowsAffected.ToString();

            }
            catch (Exception ex)
            {
                LblMsg.Text = "Error!!" + ex.Message;
            }
            finally { con.Close(); }
        }


        //protected void RblDelete_CheckedChanged(object sender, EventArgs e)
        //{
        //    if (Rbdel.Checked)
        //    {
        //        delBtn.Enabled = true;
        //    }
        //    else
        //    { delBtn.Enabled = false; }

        //}
        //protected void BtnDelete_Click(object sender, EventArgs e)
        //{

        //    LblMsg.Visible = true;
        //    try
        //    {
        //        cmd.CommandText = "delete Products set where Pid=@procid";
        //        cmd.Parameters.AddWithValue("@procid", int.Parse(LblPid.Text));

        //        con.Open();
        //        cmd.ExecuteNonQuery();
        //        LblMsg.Text = "Product deleted";
        //        RegisterPanel.Visible = false;

        //    }
        //    catch (Exception ex)
        //    {
        //        LblMsg.Text = "Error!!" + ex.Message;
        //    }
        //    finally { con.Close(); }

        //}

        //protected void TxtStock_TextChanged(object sender, EventArgs e)
        //{

        //}
    }
}