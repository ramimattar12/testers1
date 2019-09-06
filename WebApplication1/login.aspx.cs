using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        string connection = "Data Source=DESKTOP-9U2LOOE;Initial Catalog=test;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void login1_Click(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection();
            con.ConnectionString = connection;
            OleDbCommand com = new OleDbCommand();
            com.Connection = con;
            com.CommandText = "select * from dbo.clients";
            DataTable dt = new DataTable();
            OleDbDataAdapter da = new OleDbDataAdapter();
            da.SelectCommand = com;
            con.Open();
            da.Fill(dt);
            con.Close();
            Response.Redirect("user.aspx");
        }
    }
}