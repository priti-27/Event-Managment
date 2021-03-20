<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <style>
        * {
    box-sizing: border-box;
}
 
input[type=text], select, textarea{
    width: 100%;
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
            height: 60px;
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



</style>

<div class="signup">

   
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:eventConnectionString %>" 
        SelectCommand="SELECT * FROM [regi]" ></asp:SqlDataSource>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<h3 style=" font-size: x-large; font-family: Aharoni; text-decoration: underline">Register</h3>
    
    <div class="row">
      <div class="col-25">
        <label for="fname"> Name</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox1" runat="server" placeholder="Your name.."></asp:TextBox>
          <asp:RequiredFieldValidator runat="server" ErrorMessage="Your First Name Must Not Be Empty" 
              ForeColor="Red" ID="RequiredFieldValidator1"
              ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
      </div>
        
    </div>
   
   <div class="row">
      <div class="col-25">
        <label for="fname">College Name</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox2" runat="server" placeholder="Your last name.."></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
              ErrorMessage="Your Last Name Must Not Be Empty" ForeColor="red" 
              ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label for="fname">Username</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox3" runat="server" placeholder="Set username.."></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
              ErrorMessage="Username must Not be Empty" ForeColor="red" 
              ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label>Password</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox4" runat="server" placeholder="Set password.." TextMode="Password"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
              ErrorMessage="Password Must Not Be Empty" ForeColor="red" 
              ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
      </div>
    </div>
    <br />
    <div class="row">
      <div class="col-25">
        <label>Confirm</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox8" runat="server" placeholder="Set password.." TextMode="Password"></asp:TextBox>
          <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox4" ControlToValidate="TextBox8" 
            ErrorMessage="Password Do Not Match" ForeColor="Red"></asp:CompareValidator>

      </div>
       
    </div>
    <br />
     <div class="row">
      <div class="col-25">
        <label>Mobile No.</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox7" runat="server" placeholder="Phone no. .." 
              class="phone" TextMode="Number"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
              ErrorMessage="Please Enter Mobile Number " ForeColor="red" 
              ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
      </div>
    </div>
    <br />
    <div class="row">
      <div class="col-25">
        <label>Email</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox5" runat="server" placeholder="Your Email.." 
              TextMode="Email" ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
              ErrorMessage="Please Enter Email" ForeColor="red" 
              ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
      </div>
    </div>
    <br />

    <div class="row">
      <div class="col-25">
        <label for="fname">Events</label>
      </div>
      <div class="col-75">
          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack = "true" >
              <asp:ListItem Value="0">--Select Event--</asp:ListItem>  
              <asp:ListItem>Technical Fest</asp:ListItem>
              <asp:ListItem>cultural Fest</asp:ListItem>
              <asp:ListItem>Sports Fest</asp:ListItem>
          </asp:DropDownList>
           <asp:RequiredFieldValidator
        ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList1"
        ErrorMessage=" Plz select the value" InitialValue="0"
        ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
        </div>
    </div>
     <br />
    <br />
     </ContentTemplate>
</asp:UpdatePanel>
    <br />
    <br />
    <br />

    <div class="row">
        <asp:Button ID="Button1" runat="server" Text="Submit" 
            onclick="Button1_Click"   />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="Button2" runat="server" Text="Clear"  onclick="Button2_Click"  />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
    </div>
    
  </div> 
</asp:Content>

