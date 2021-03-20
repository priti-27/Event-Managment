<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="mangeEventhead.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            color: #3399FF;
            text-align: left;
        }
        .style3
        {
            font-size: large;
            font-family: "Times New Roman", Times, serif;
        }
        .style4
        {
            font-size: large;
            color: #000000;
            font-family: "Times New Roman", Times, serif;
        }
    
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
   

        .style5
        {
            width: 100%;
        }
   

        .style6
        {
            height: 22px;
        }
   

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">

 <fieldset>
 <legend>Event Info</legend>

    <p class="style2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Event info</strong><p class="style2">

       &nbsp;<br />

    <table class="style5">
        <tr>
            <td>
         

    <strong>

    <asp:Label ID="Label5" runat="server" Text="EventName" CssClass="style4"></asp:Label>
        </strong>
            </td>
            <td>

    <strong>

    <asp:TextBox ID="TextBox1"
        runat="server" CssClass="style3" Width="320px"></asp:TextBox>
        </strong>
            </td>
        </tr>
        <tr>
            <td>
                <span class="style4"><strong>

          <asp:Label ID="Label2" runat="server" Text="EventTime"></asp:Label>
    </strong></span>
            </td>
            <td>
                <strong>
    <asp:TextBox ID="TextBox2"
        runat="server" CssClass="style3" Width="322px"></asp:TextBox>
        </strong>
            </td>
        </tr>
        <tr>
            <td>
                <span class="style4"><strong>

          <asp:Label ID="Label3" runat="server" Text="Eventdate"></asp:Label>
    </strong></span>
            </td>
            <td>
                <strong>
    <asp:TextBox ID="TextBox3"
        runat="server" CssClass="style3" Width="323px"></asp:TextBox>
        </strong>
            </td>
        </tr>
        <tr>
            <td>
                <span class="style4"><strong>

          <asp:Label ID="Label4" runat="server" Text="Eventhead"></asp:Label>
    </strong></span>
            </td>
            <td>
                <strong>
    <asp:TextBox ID="TextBox4" runat="server" CssClass="style3" Width="323px"></asp:TextBox>
    </strong>
            </td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td class="style6">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <strong>
      
    <asp:Button ID="Button1" runat="server" Text="submit" CssClass="style3" 
        BackColor="#3366FF" BorderColor="#0066FF" onclick="Button1_Click" Height="46px" 
                    Width="96px" ForeColor="Black" />
    </strong>
            </td>
        </tr>
    </table>
<h3>
</fieldset>
</asp:Content>


      
    

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

