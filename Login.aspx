<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <div class="main" >

    <marquee>
        it is informed to all that  fest is organised by our A.V.College on .So you all are invited to the fest. Those who want to perform some event can Register on website.
    </marquee>
  
     <br />
     <span id="txt" dir="rtl"></span>  

<script>
    window.onload = function () 
    {
        getTime(); 
    }
    function getTime() {
        var today = new Date();
        var h = today.getHours();
        var m = today.getMinutes();
        var s = today.getSeconds();
        // add a zero in front of numbers<10  
        m = checkTime(m);
        s = checkTime(s);
        document.getElementById('txt').innerHTML = h + ":" + m + ":" + s;
        setTimeout(function () { getTime() }, 1000);
    }
    //setInterval("getTime()",1000);//another way  
    function checkTime(i) {
        if (i < 10) {
            i = "0" + i;
        }
        return i;
    }  
</script>  
<br /><img alt="Welcome To TECHFEST" src="image/borna-bevanda-377277-unsplash.jpg" 
                style="width: 90%; height: 55%; margin-left:40px;" 
            align="center" />
        <br />
            <br />
        <div style="width: 94%; margin-left:41;" align="center" >
            <p style="text-align: justify">
            Don't you think you should also have fun while learning at college? Gone are those days when college life was only about 
         academics and students focused on attending lectures and writing exams.
      <br />In the recent times, to engage students and prepare them for the real world,college and universities organize college fests and encourage students to participate 
and showcase their latent talent.
</p>
</div>           
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
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
    }
    .col25
    {
        float:left;
        width:18%;
       margin-top:6px;
    }
    .col75
    {
        float:right;
        width:76%;
        margin-top:6px;
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
       height:100%;       
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
<div class="container">
    
<h3><label id="head" runat="server">Login</label></h3>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <label ID="lblerror" runat="server" Visible="false" style="color: Red; background-color:rgb(255, 171, 152);
       color:Red;
       padding:10px;
       padding-right:25px;
       padding-left:25px;
       border:2px;
       border-radius:5px;
       BorderStyle=Solid;
        BorderColor=Red;">Invalid Username or Password</label>
 <div class="row">
   <div class="col25">
        <label style="font-size: small; width: 61px;">Username:</label>
   </div>
   <div class="col75">
        <asp:TextBox ID="TextBox1" runat="server" Width="149px"></asp:TextBox>
   </div>
 </div> 
 <div class="row">
    <div class="col25">
         <label style="font-size: small">Password:</label>
    </div>
    <div class="col75">
         <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="148px"></asp:TextBox>
    </div>
 </div>
     </ContentTemplate>
</asp:UpdatePanel>
    <asp:Button ID="login" runat="server" Text="Login" font-family="Aharoni"
        onclick="Button1_Click" />
    <br /><br />
   <a href="forgetpass.aspx">Forgot your password</a>
    <h3>New User <a href="Signup.aspx" style="text-decoration: underline">Signup</a></h3>
   </form>
   </div>
</asp:Content>
    

