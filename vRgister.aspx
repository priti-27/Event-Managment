<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="vRgister.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet3.css" rel="stylesheet" type="text/css" />
   <style>
       * {
    box-sizing: border-box;
}
 
input[type=text], select, textarea{
    padding: 6px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
}
.phone
{
    width: 100%;
    padding: 6px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
}
input[type=password], select, textarea{
    padding: 6px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
}
input[type=email], select, textarea{
    padding: 6px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
}


label {
    padding: 6px 6px 6px 0;
    color: DodgerBlue;
    font-family: Aharoni;
    display: inline-block;
}

input[type=submit] {
    background-color: DodgerBlue;
    color: white;
    font-family:Aharoni;
    margin-top: 6px;
    padding: 20px 30px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    align: center;
}

input[type=submit]:hover {
    background-color: white;
    color: DodgerBlue;
}

.container {
    border-radius: 5px;
    background-color: white;
    padding: 20px;
}

.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-75 {
    float: left;
    width: 75%;
    margin-top: 6px;
}
h3
{
   color: Dodgerblue; 
}

    .signup
{
    border-radius: 5px;
    background-color: white;
    padding: 20px;
}

       .style2
       {
           font-family: Arial, Helvetica, sans-serif;
           width: 238px;
           height: 263px;
           margin-left: 11px;
       }
       .style3
       {
           font-size: small;
       }
       .style4
       {
           font-family: Arial;
       }

   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <div class="container">
          
        <h3 style="height: 58px"><label id="head" runat="server">Login</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [vregister]">
          </asp:SqlDataSource>
        </h3>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
      <div>
      <center>
        <fieldset style="width: 375px;">

            <legend>Login</legend>

        <div class="row">
   <div class="col25">
        <span class="style2">
        <label class="style3" style="height: 24px; width: 65px;">
        <strong>Username:</strong></label></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="238px" ></asp:TextBox>
        <br />
        <font>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="*" 
            ForeColor="red"></asp:RequiredFieldValidator>
        </font>
        <br />
        <label for="fname" style="font-size: small">
        <span class="style4"><strong>Collegename:</strong></span>&nbsp;&nbsp;&nbsp;
        </label>
        <asp:TextBox ID="TextBox2" runat="server" Height="34px" Width="241px" 
           ></asp:TextBox>
        <br />
        <font>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="*" 
            ForeColor="red"></asp:RequiredFieldValidator>
        </font>
        <br />
   </div>
 </div> 
           <br />

   <div class="row">
      <div class="col25">
        <label for="fname" style="font-size: small">
          &nbsp; <span class="style4"><strong>Event&nbsp;:</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
         
          <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="266px" 
              >
              <asp:ListItem>-Select Fest-</asp:ListItem>
              <asp:ListItem>TechnicalEvents</asp:ListItem>
              <asp:ListItem>SportsEvents</asp:ListItem>
              <asp:ListItem>CulturalEvent</asp:ListItem>
          </asp:DropDownList>
      </div>   
     <font>
    <asp:RequiredFieldValidator InitialValue="-Select Fest-" runat="server" ErrorMessage="Please Select event Events" 
              ForeColor="red" ID="RequiredFieldValidator1"
              ControlToValidate="DropDownList1"></asp:RequiredFieldValidator></font>
   <br />
  </div>
 <br />
        <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" 
                href="~/thank.aspx" Height="57px" PostBackUrl="~/thank.aspx" />
        <br />
        <br />
        <br />

            &nbsp;&nbsp;<a href="forgetpass.aspx">Forgot your password</a>
           
        </fieldset>
         </center>
  </ContentTemplate>
</asp:UpdatePanel>
  
    <br /><br />
   </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      <a href="https://govolunteer.com.au/about-volunteering/volunteering-guidelines"><img alt="" class="style2" src="image/v1.png" />
      </a>
</asp:Content>

