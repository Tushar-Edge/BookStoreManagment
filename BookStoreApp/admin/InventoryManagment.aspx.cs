using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookStoreApp.Admin
{
    public partial class InventoryManagment : System.Web.UI.Page
    {
       
        string connstr = "server=localhost;database=BookStore_Mangement;trusted_connection=true";
        SqlConnection con;
        SqlDataAdapter adapter;
        DataSet ds;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(connstr);
                cmd = new SqlCommand("DisplayBooks", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                adapter = new SqlDataAdapter(cmd);
                ds = new DataSet();
                adapter.Fill(ds);
                LblMsg.Text = "Library for you";
                Console.WriteLine(ds.Tables[0].Rows.Count);
                GvBooks.DataSource = ds.Tables[0];
                GvBooks.DataBind();
                LblMsg.Text = "Number of Books are" + ds.Tables[0].Rows.Count;



            }
            catch(Exception ex)
            {
                LblMsg.Text = ex.Message;
            }
            finally { con.Close(); }

        }

        protected void ManageStock_Click(object sender, EventArgs e)
        {
            Response.Redirect("modify.aspx");
        }
    }
}