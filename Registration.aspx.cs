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
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\priti\\project1\\App_Data\\Database1.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
      
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            string query = "insert into Registration(name,collegename,username, password,mobileno,email,event) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox8.Text + "','" + TextBox7.Text + "','" + TextBox5.Text + "' ,'" + DropDownList1.SelectedValue + "')";
            SqlCommand cmd = new SqlCommand(query, con);
          
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Signup Successfully...')</script>");

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox8.Text = "";
            TextBox7.Text = ""; 
            TextBox5.Text = "";
            
            DropDownList1.SelectedValue=" ";
           

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
       

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox3.Text = "";
        TextBox8.Text = "";
        TextBox7.Text = "";
        
        TextBox5.Text = "";
        DropDownList1.ClearSelection();
        
    }
}