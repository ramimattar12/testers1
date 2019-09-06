using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.IO;
using System.Windows.Forms;

namespace WebApplication1
{
    public partial class update : System.Web.UI.Page
    {
        public string connection = "Data Source=st1204;Initial Catalog=test;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["id"];
                SqlConnection con = new SqlConnection(connection);
                con.Open();
                if (con.State == System.Data.ConnectionState.Open)
                {

                    string q = "SELECT * from users where id='" + id + "'";
                    SqlCommand cmd = new SqlCommand(q, con);
                    SqlDataReader reader = cmd.ExecuteReader();

                    // result gives the -1 output.. but on insert its 1

                    // iterate your results here

                    while (reader.Read())
                    {

                        txtname.Text = reader["firstname"].ToString();
                        txtlname.Text = reader["lastname"].ToString();
                        txtemail.Text = reader["email"].ToString();

                    }

                    con.Close();

                }
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            string name = txtname.Text;
            string lname = txtlname.Text;
            string email = txtemail.Text;
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {

                string q = "update users set firstname='" + name + "',lastname='" + lname + "',email='" + email + "' where id='" + id + "'";
                SqlCommand cmd = new SqlCommand(q,con);
                cmd.ExecuteNonQuery();
                con.Close();

            }
            Response.Redirect("user.aspx");
        }
    }
}