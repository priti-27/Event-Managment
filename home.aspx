<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
 
    
        <h3><marquee align="center" style="font-family: Arial; color: DodgerBlue" ><a href="http://www.avc.ac.in"> Welcome To Vartak College</a><br /></marquee></h3>



<img src="image/cultural%20(1).jpg" 
            style="width: 94%; height: 618px; margin-left:40px;" align="center" ></image>

<p>Thank you for making the 2018 TechFest College Fair a success. </p>
<br />

        <p style="margin-bottom: 12px; height: 18px;">Save the date for the 2019 fair! </p>
<br />
        <p style="height: 38px; margin-right: 3px; margin-bottom: 0px;">Tuesday, April 15, 2019<br />6-8 pm </p><p>
        <asp:Button ID="Button2" runat="server" Text="Logout" BackColor="#3366FF" 
            ForeColor="White" Visible="true" Font-Size="Large" 
            Font-Underline="True" Width="82px" onclick="Button2_Click"   onclientclick="welcome.aspx" 
            style="font-size: Large" BorderStyle="None"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
        <p>
            &nbsp;</p></h3>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
   
 </asp:Content>

