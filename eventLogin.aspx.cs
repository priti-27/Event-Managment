using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlCommand cmd = new SqlCommand("select * from event_drop1", con);
            SqlDataAdapter dr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dr.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
        }

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        try
        {
            con.Open();
            cmd.CommandText = "select * from signup where username='" + TextBox1.Text + "' COLLATE SQL_Latin1_General_CP1_CS_AS";
            cmd.Connection = con;
            dr = cmd.ExecuteReader();
            

            if (dr.HasRows)
            {
                Session["username"] = TextBox1.Text;

                string username = Session["username"].ToString();
                if (username == "admin")
                {
                    Response.Redirect("~/AddEvents.aspx");
                    Response.Write("<script>alert('Welcome +" + username + "')</script>");
                }
                else
                {
                    Response.Redirect("~/payment.aspx");
                    Response.Write("<script>alert('Welcome +" + username + "')</script>");
                }
            }

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.Items.Clear();
        DropDownList2.Items.Add("--Select subevent--");
        SqlCommand cmd = new SqlCommand("select * from sub_drop2 where e_id=" + DropDownList1.SelectedItem.Value, con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DropDownList2.DataSource = dt;
        DropDownList2.DataBind();
    }



    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList3.Items.Clear();
        DropDownList3.Items.Add("--Select venue--");
        SqlCommand cmd = new SqlCommand("select * from venue where e_id=" + DropDownList1.SelectedItem.Value, con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DropDownList3.DataSource = dt;
        DropDownList3.DataBind();
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList4.Items.Clear();
        DropDownList4.Items.Add("--Select Payment--");
        SqlCommand cmd = new SqlCommand("select * from Payment where e_id=" + DropDownList1.SelectedItem.Value, con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DropDownList4.DataSource = dt;
        DropDownList4.DataBind();
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}