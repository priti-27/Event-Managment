using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
       protected void Button1_Click1(object sender, EventArgs e)
    {
         if (FileUpload1.HasFile)  
        {
            string str = FileUpload1.FileName;  
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Uploadevent/" + str));  
            string Image = "~/Uploadevent/" + str.ToString();
            string name = TextBox1.Text;
            string description = TextBox2.Text;

            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\priti\\project1\\App_Data\\Database1.mdf;Integrated Security=True;User Instance=True");
            SqlCommand cmd = new SqlCommand("insert into upevent (name,image,description) values(@name,@Image,@description)", con);  
            cmd.Parameters.AddWithValue("@name", name);  
            cmd.Parameters.AddWithValue("Image", Image);
            cmd.Parameters.AddWithValue("@description", description); 
  
            con.Open();  
            cmd.ExecuteNonQuery();  
            con.Close();  
  
            Label1.Text = "Image Uploaded";  
            Label1.ForeColor = System.Drawing.Color.ForestGreen;

            Response.Redirect("~/UpcomingEvents.aspx");
        }  
  
        else  
        {  
            Label1.Text = "Please Upload your Image";  
            Label1.ForeColor = System.Drawing.Color.Red;  
        }       
       }
    }
