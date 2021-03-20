<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    h3
    {
        color:white;
        font-family:Aharoni;
    }
    h3 a
    {
        color:White;
        font-family:Aharoni;
        
    }
    a:link
    {
        text-decoration:none;
    }
    input[type=text]
    {
    padding: 6px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
         margin-left: 1px;
     }
    input[type=password]
    {
    padding: 6px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
    }
    
    label
    {
        color:white;
        font-family:Aharoni;
        padding: 6px 0 6px 0;
        display: inline-block;
    }
    .row
    {
        padding:5px;
            height: 55px;
        }
    .col25
    {
        float:left;
        width:18%;
       margin-top:6px;
            height: 24px;
        }
    .col75
    {
        float:right;
        width:68%;
        margin-top:6px;
         height: 24px;
     }
   
   input[type=submit]
   {
       background-color:white;
       color:DodgerBlue;
       padding: 12px 20px;
       margin-top:6px;
       font-family:Aharoni;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-left: 30px;
   }
   input[type=submit]:hover 
   {
    background-color: DodgerBlue;
    color:white;
   }
   .container
   {
       height:99%;       
   }
   

 p.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	}
   

    </style>

    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 311px;
        }
    .style4
    {
        text-decoration: underline;
        color: #6699FF;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    
    <h3><p class="style4" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large">
    <strong>Contact Us</strong></p></h3>
    <center>
  <fieldset style="width: 40%;">
           <legend>Contact us</legend>
          
    <table class="style2">
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="YourName"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Width="137px"></asp:TextBox>
                <br />
                <br />
                 <asp:Label ID="Label2" runat="server" Text="ContactNo."></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Width="130px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Feedback"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" Width="125px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="send" onclick="Button1_Click1" />
            </td>
            <td>
                <img src="image/location.png" style="height:40px; width:40px;" />
               <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d235.22595278337815!2d72.82854684930994!3d19.38580560274835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7aec74e3140ff%3A0x75f69f9215d5c989!2sAnnasaheb+Vartak+College+of+Arts%2C+Commerce%2C+Science!5e0!3m2!1sen!2sin!4v1553585186525" 
                    frameborder="0" 
                    style="border-style: none; border-color: inherit; border-width: 0; height: 96px; width: 427px;" 
                    allowfullscreen></iframe>
                    <br />
                    <br />
                <img src="image/whatapp.png" style="height:40px; width:40px;"  />
                <asp:TextBox ID="TextBox4" runat="server" Enabled="False" Width="440px">7030998907</asp:TextBox>
                <br />
                <br />
                <img src="image/email.jpg"  style="height:40px; width:40px;"   />
                 <asp:TextBox ID="TextBox5" runat="server" Enabled="False" Width="436px">techfest27@gmail.com</asp:TextBox>
                 <br />
                
          </td>
        </tr>
    </table>
    </fieldset>
    </center>
   
  
  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

