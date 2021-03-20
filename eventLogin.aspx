<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="eventLogin.aspx.cs" Inherits="_Default" %>

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
               width: 95px;
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
    <h3 class="style2"> EventLogin</h3>
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
   
 <div class="row">
   <div class="col25">
        <br />
        <br />
        <label for="fname">Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label><asp:TextBox ID="TextBox1" runat="server" 
            Width="378px"></asp:TextBox>
        <br />
        <font>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Please fill username" 
            ForeColor="red"></asp:RequiredFieldValidator>
        </font>
        <br />
   </div>
 </div>

   <div class="col25">
   <br />
   <label for="fname">Event&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
       <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="true" 
           AutoPostBack="true" DataTextField="e_name" DataValueField="e_id" Height="43px" 
           onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
           style="text-align: right; margin-right: 0px;" Width="379px">
           <asp:ListItem Value="0">--Select Event--</asp:ListItem>
       </asp:DropDownList>
       <br />
       <font>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
           ControlToValidate="DropDownList1" ErrorMessage="Please Select Events" 
           ForeColor="red" InitialValue="0"></asp:RequiredFieldValidator>
       </font> </div>

<br />

    <div class="row">
      <div class="col25">
          <label for="fname">SubEvevnt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </Label>&nbsp;&nbsp;
           <asp:DropDownList ID="DropDownList2" runat="server" AppendDataBoundItems="true" DataTextField="s_name"   
                    DataValueField="s_id"  onselectedindexchanged="DropDownList2_SelectedIndexChanged"
                     AutoPostBack = "true" Height="40px" style="text-align: right; margin-right:0px;" Width="381px">
               <asp:ListItem Value="0">-- Select subevent--</asp:ListItem> 
            </asp:DropDownList> 
            <br/>      
        <font>        
        <asp:RequiredFieldValidator InitialValue="0" runat="server" ErrorMessage="Please Select Technical Events" 
          ForeColor="red" ID="RequiredFieldValidator1" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator></font>
    </div>
    </div>
        <br />


   <div class="row">
      <div class="col25">
        <label for="fvenue">venue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>&nbsp;
          <asp:DropDownList ID="DropDownList3" runat="server" AppendDataBoundItems="true" 
              AutoPostBack="true" DataTextField="v_name" DataValueField="v_id" Height="37px" 
              onselectedindexchanged="DropDownList3_SelectedIndexChanged" 
              style="text-align: right" Width="375px">
              <asp:ListItem Value="0">-- Select Venue--</asp:ListItem>
              <asp:ListItem>IT Lab</asp:ListItem>
              <asp:ListItem>Rajadhi</asp:ListItem>
              <asp:ListItem>sports ground</asp:ListItem>
          </asp:DropDownList>
          <br />
          <font>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
              ControlToValidate="DropDownList1" ErrorMessage="Please Select Venue Events" 
              ForeColor="red" InitialValue="0"></asp:RequiredFieldValidator>
          </font>
      </div>
           <br />
           <br />
    </div>


    <div class="row">
      <div class="col25">
          <label for="fname">payment&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>  
          <asp:DropDownList ID="DropDownList4" runat="server" AppendDataBoundItems="true" 
              AutoPostBack="true" DataTextField="p_money" DataValueField="p_id" Height="45px" 
              onselectedindexchanged="DropDownList4_SelectedIndexChanged" 
              style="text-align: right" Width="374px">
              <asp:ListItem Value="0">-- Select Payment--</asp:ListItem>
              <asp:ListItem>100.0000</asp:ListItem>
              <asp:ListItem>150.0000</asp:ListItem>
              <asp:ListItem>200.0000</asp:ListItem>
          </asp:DropDownList>
      </div>
           <font>
        
        <asp:RequiredFieldValidator InitialValue="0" runat="server" ErrorMessage="Please Select payment Events" 
              ForeColor="red" ID="RequiredFieldValidator4" ControlToValidate="DropDownList3"></asp:RequiredFieldValidator></font>
              
           <br />
        <br />
    </div>
     </ContentTemplate>
</asp:UpdatePanel>

    <asp:Button ID="Button1" runat="server" Text="Submit" font-family="Aharoni" 
        onclick="Button1_Click1" Height="60px" PostBackUrl="~/payment.aspx" />
    <br /><br />
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="forgetpass.aspx">Forgot your password</a>&nbsp;</div>
</center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

