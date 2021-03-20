using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\priti\\project1\\App_Data\\Database1.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {   
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            string query = "insert into vregister(username,collegename,event) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "')";
            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/thank.aspx");
            Response.Write("<script>alert('Signup Successfully...')</script>");

           
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            DropDownList1.SelectedValue = " ";
           

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}
    