<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="volunteer.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .row
        {
            height: 582px;
        }
        .style2
        {
            text-decoration: underline;
            text-align: center;
            font-family: "Times New Roman", Times, serif;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">

    <div class="row">
    <p class="style2"><strong>welcome to volunteer</strong></p>
        <p> <img id= "ad" src="image/volunteer.jpg" style= " width:675px"/></p>
        <br />
        <br />
   <br />
  
    &nbsp;<br />
    &nbsp;&nbsp;&nbsp;&nbsp;</div>
    <br />
    <asp:Button ID="Button3" runat="server" Text="Login" Width="118px" 
        Height="44px" onclick="Button3_Click" BackColor="#3399FF" 
        BorderColor="#0066FF" BorderStyle="None" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<link href="StyleSheet2.css" rel="stylesheet" type="text/css" />
<p>volunteer information</p>
<marquee direction = "up" 
        style=" width: 250px; height:548px; margin-left: 0px; margin-right: 0px;">
<div class="container blur">
    <ul class="slider"  style=" width:214px; height:1150px; " >
      <li><p> Tech Fest 2019</p></li>
      <li><p> This to Inform all students this TechFest2019</p></li>  
      <li><p> will be Celebrated on April 15 from morning 9am to evening 5pm</p></li>
      <li><p> volunteer registration started April 3rd to 7th April 2019 </p></li>
       <li><p>Students Who Would like to Participate in various Volunteer Programmes Should</p></li> 
      <li><p>Contact thier respective website latest by the April 7,2019</p></li>
      <li><p>PriyaMaurya (Volunteer Event in Charge).</p></li>
    </ul>
</div></marquee>
</asp:Content>

