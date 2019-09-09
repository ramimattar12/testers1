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
    public partial class show : System.Web.UI.Page
    {
        public string connection = "Data Source=lenovorami;Initial Catalog=test;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            SqlConnection con = new SqlConnection(connection);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {

                string q = "select user_images.image from user_images where userid='" + id + "'";
                SqlCommand cmd = new SqlCommand(q, con);
                SqlDataReader reader = cmd.ExecuteReader();

                // result gives the -1 output.. but on insert its 1

                // iterate your results here
                string result="";
                while (reader.Read())
                {

                    result += "<div><img style='width: 30%;' src='images/" + reader["image"]+".jpg' /></div>";


                }
                form1.InnerHtml = result;
                con.Close();

            }
        }
    }
}