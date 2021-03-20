using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Data.SqlClient;
//using System.Data;



    public partial class Default2 : System.Web.UI.Page
    {
       // SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;User Instance=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            //LinkButton LinkButton1 = new LinkButton();
            //LinkButton1.Click += new EventHandler(LinkButton1_Click);
          
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            ////throw new NotImplementedException();
            //SqlDataSource1.InsertParameters["a_name"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox2")).Text;
            //SqlDataSource1.InsertParameters["a_sevent"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtsevent")).Text;
            //SqlDataSource1.InsertParameters["a_venue"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtvenue")).Text;
            //SqlDataSource1.InsertParameters["a_payment"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtpay")).Text;

            //SqlDataSource1.Insert();
        }
        protected void LinkButton1_EditCommand(object source, DataListCommandEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
}
