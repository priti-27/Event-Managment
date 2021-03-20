using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Drawing;

public partial class forgetpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }   
    private void SendEmai(string p)
    {
        throw new NotImplementedException();
    }
    public object sbExceptionMessage 
    { 
        get; set; 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = "";
        string password = "";

        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\priti\\project1\\App_Data\\Database1.mdf;Integrated Security=True;User Instance=True");
        //SqlCommand cmd = new SqlCommand(con);
        string query = "select username,password from signup where email=@email";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@email", TextBox1.Text);
        con.Open();

        using (SqlDataReader sdr = cmd.ExecuteReader())
        {
            if (sdr.Read())
            {
               username = sdr["username"].ToString();
                password = sdr["password"].ToString();
            }
        }
      
        con.Close();
        if (!string.IsNullOrEmpty(password))
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("pritimaurya2705@gmail.com");
            msg.To.Add(TextBox1.Text);
            msg.Subject = " Recover your Password";
            msg.Body = ("Your Username is:" + username + "<br/><br/>" + "Your Password is:" + password);
            msg.IsBodyHtml = true;
            SmtpClient smt = new SmtpClient();
            smt.Host = "smtp.gmail.com";            
            System.Net.NetworkCredential ntwd = new NetworkCredential();
            ntwd.UserName = "pritimaurya2705@gmail.com";
            ntwd.Password = "priti@199827";
            smt.UseDefaultCredentials = false;
            smt.Credentials = ntwd;  
            smt.Port = 587;
            smt.EnableSsl =true;
            smt.Send(msg);
            Label1.Text = "Username and Password Sent Successfully" + TextBox1.Text;
            Label1.ForeColor = System.Drawing.Color.ForestGreen;
        }
        else
        {
            Label1.ForeColor = Color.Red;
            Label1.Text = TextBox1.Text + "This Email-id not registered";
        }
    }


//    function is as follows: public static void Email(string htmlString) {  
//06.    try {  
//07.        MailMessage message = new MailMessage();  
//08.        SmtpClient smtp = new SmtpClient();  
//09.        message.From = new MailAddress("FromMailAddress");  
//10.        message.To.Add(new MailAddress("ToMailAddress"));  
//11.        message.Subject = "Test";  
//12.        message.IsBodyHtml = true; //to make message body as html  
//13.        message.Body = htmlString;  
//14.        smtp.Port = 587;  
//15.        smtp.Host = "smtp.gmail.com"; //for gmail host  
//16.        smtp.EnableSsl = true;  
//17.        smtp.UseDefaultCredentials = false;  
//18.        smtp.Credentials = new NetworkCredential("FromMailAddress", "password");  
//19.        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;  
//20.        smtp.Send(message);  
//21.    } catch (Exception) {}  
//22.}  


   
}