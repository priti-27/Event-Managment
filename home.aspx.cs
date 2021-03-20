using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Label1.Text = "<font color='white'>YOU ARE NOT LOGGED IN" + "<br> <a href='Login.aspx'>Sign in</a></font>";
        }
        else
        {
            Label1.Text = "<font color='white'>Welcome " + Session["username"] + " <br> ";
            Button2.Visible = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/welcome.aspx");
    }
}