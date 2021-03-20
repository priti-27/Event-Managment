<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="AddEvent.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
    width: 100%;
    padding: 6px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
}
input[type=email], select, textarea{
    width: 100%;
    padding: 6px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
}


label {
    padding: 6px 6px 6px 0;
    color:DodgerBlue;
    font-family:Aharoni;
    display: inline-block;
               width: 86px;
           }

input[type=submit] {
    background-color: DodgerBlue;
    color: white;
    font-family:Aharoni;
    margin-top:6px;
    padding: 20px 30px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    align:center;
}

input[type=submit]:hover {
    background-color:white;
    color:DodgerBlue;
}

.container {
    border-radius: 5px;
    background-color:white;
    padding: 20px;
               margin-left: 33px;
               margin-right: 0px;
               margin-bottom: 16px;
           }

.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-75 {
    float: left;
    width: 63%;
    margin-top: 6px;
}
h3
{
   color:Dodgerblue;
   height: 49px;
   width: 524px;
 }
 

    .signup
{
    border-radius: 5px;
    background-color:white;
    padding: 20px;
}
 .style2
 {
  text-decoration: underline;
  font-size: xx-large;
  font-family: "Times New Roman", Times, serif;
        margin-bottom: 0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
<center>
<div class="container">
    <h3 class="style2"> AddEvent</h3>
             <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [event_login]">
    </asp:SqlDataSource>
   
    <br />
   
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
   
 <%--<div class="row">
   <div class="col25">
        <br />
        <label for="fname">EventId:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
        &nbsp; <asp:TextBox ID="TextBox1" runat="server" 
            Width="327px"></asp:TextBox>
        <br />
        <font>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Please Select Events" 
            ForeColor="red"></asp:RequiredFieldValidator>
        </font>
        <br />
   </div>
 </div>--%>

   <div class="col25">
   <br />
   <label for="fname">EventName&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
       &nbsp;
       <asp:TextBox ID="TextBox2" runat="server" Width="327px"></asp:TextBox>
       <br />
       <font>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
           ControlToValidate="TextBox2" ErrorMessage="Please Select Events" 
           ForeColor="red" ></asp:RequiredFieldValidator>
       </font> </div>

<br />

    <div class="row">
      <div class="col25">
          <label for="fname">SubEvevnt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </Label>&nbsp;&nbsp;
           <asp:TextBox ID="TextBox3" runat="server" Width="327px"></asp:TextBox>
            <br/>      
        <font>        
        <asp:RequiredFieldValidator  runat="server" ErrorMessage="Please Select Technical Events" 
          ForeColor="red" ID="RequiredFieldValidator3" ControlToValidate="TextBox3"></asp:RequiredFieldValidator></font>
    </div>
    </div>
        <br />


   <div class="row">
      <div class="col25">
        <label for="fvenue">venue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>&nbsp;
          <asp:TextBox ID="TextBox4" runat="server" Width="327px"></asp:TextBox>
          <br />
          <font>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
              ControlToValidate="TextBox4" ErrorMessage="Please Select Venue Events" 
              ForeColor="red"></asp:RequiredFieldValidator>
          </font>
      </div>
           <br />
           <br />
    </div>


    <div class="row">
      <div class="col25">
          <label for="fname">payment&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>  
          &nbsp;
          <asp:TextBox ID="TextBox5" runat="server" Width="327px"></asp:TextBox>
      </div>
           <font>
        
        <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Select payment Events" 
              ForeColor="red" ID="RequiredFieldValidator5" ControlToValidate="TextBox5"></asp:RequiredFieldValidator></font>
              
           <br />
        <br />
    </div>
     </ContentTemplate>
</asp:UpdatePanel>

    <asp:Button ID="Button1" runat="server" Text="Submit" font-family="Aharoni" 
        onclick="Button1_Click1" Height="60px" />
    <br /><br />
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="forgetpass.aspx">Forgot your password</a>&nbsp;</div>
</center>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

