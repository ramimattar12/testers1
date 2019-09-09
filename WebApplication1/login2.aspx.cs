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
using System.Web.SessionState;
using System.Windows.Forms;

namespace WebApplication1
{
    public partial class login2 : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string connection = "Data Source=lenovorami;Initial Catalog=test;Integrated Security=True";
        //public string connection = "server = st1204;database = test;integrated security=True";
        protected void btnlogin_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(connection);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                
                string q = "SELECT * from clients";
                SqlCommand cmd = new SqlCommand(q,con);
                SqlDataReader reader = cmd.ExecuteReader();

                string name = "", pass = "", rrr = "", bbbs = "" ;
                while (reader.Read())
                {

                        // Adding Session to your page
                        //add command
                        
                        name = reader["username"].ToString();
                        pass = reader["password"].ToString();
                        if (txtname.Text == name && txtpass.Text == pass)
                        {
                                Session["login"] = true;
                                Response.Redirect("user.aspx");
                        }
                        else
                        {
                            MessageBox.Show("username or password are not correct", "alert");
                        }
                        
                    
                }


                con.Close();

            }
        }
    }
}