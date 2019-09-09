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
    public partial class user : System.Web.UI.Page
    {
        public string connection = "Data Source=st1204;Initial Catalog=test;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (bool.Parse(Session["login"].ToString()) == true)
                {
                    // Checking this session on the page, on the page load event.

                        SqlConnection con = new SqlConnection(connection);
                        con.Open();
                        if (con.State == System.Data.ConnectionState.Open)
                        {

                            string q = "SELECT * from users";
                            SqlCommand cmd = new SqlCommand(q, con);
                            SqlDataReader reader = cmd.ExecuteReader();




                            GridView1.DataSource = reader;
                            GridView1.DataBind();



                            con.Close();

                        }
                    
                }
                else
                {
                    Response.Redirect("Login2.aspx");
                }
            }



        }



        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

       
                
            if (e.CommandName == "DeleteData")
            {



                int index = Convert.ToInt32(e.CommandArgument.ToString());
                //int i = index - 1;
                //GridViewRow clickedRow = GridView1.Rows[i];
                //string id = clickedRow.Cells[1].Text;
                SqlConnection con = new SqlConnection(connection);
                con.Open();
                if (con.State == System.Data.ConnectionState.Open)
                {

                    string q = "delete from users where id='" + index + "'";
                    SqlCommand cmd = new SqlCommand(q, con);
                    cmd.ExecuteNonQuery();
                    con.Close();

                }
                Response.Redirect("user.aspx");
            }
            if (e.CommandName == "updateData")
            {
                int index = Convert.ToInt32(e.CommandArgument.ToString());
                Response.Redirect("update.aspx?id=" + index);
            }
            if (e.CommandName == "showData")
            {
                int index = Convert.ToInt32(e.CommandArgument.ToString());
                //int i = index - 1;
                //GridViewRow clickedRow = GridView1.Rows[i];              
                //string id = clickedRow.Cells[1].Text;
                Response.Redirect("show.aspx?id="+index);

            }

            
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session["login"] = false;
            Response.Redirect("login2.aspx");
        }
    }
}