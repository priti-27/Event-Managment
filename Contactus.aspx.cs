using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\priti\\project1\\App_Data\\Database1.mdf;Integrated Security=True;User Instance=True ");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {

            string query = "insert into contact(yourname,contactno,description) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Contactus Data Successfully Added...')</script>");

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
       
    }
}