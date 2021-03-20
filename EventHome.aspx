<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EventHome.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .row
    {
        margin-left: 0px;
            height: 540px;
            text-align: left;
            width: 507px;
        }
        {
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

label {
    padding: 6px 6px 6px 0;
    color:DodgerBlue;
    font-family:Aharoni;
    display: inline-block;
}

input[type=submit] {
    background-color:DodgerBlue;
    color: white;
    font-family:Aharoni;
    margin-top:6px;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    align:center;
}

input[type=submit]:hover {
    background-color:white;
    color:DodgerBlue;
}

.ad_container {
    border-radius: 5px;
    background-color:white;
    padding: 20px;
            width: 71px;
        }


.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-75 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

h3
{
    color:Dodgerblue;
    font-family:Aharoni;
}
.log
{
    float:right;
    margin-right:30px;
            width: 117px;
        }
#Button3
{
    padding:0px;
        height: 24px;
    }
    * {
    box-sizing: border-box;
            }

#Button4
{
    padding:0px;
        height: 24px;
    }
        .style2
    {
        width: 92%;
        height: 1134px;
    }
        </style>
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
   

    <table class="style2">
        <tr>
            <td>
            <p>Technical Event</p>
               <center><img src="image/technical-events.jpg" style="height:327px; width:550px;" /></center> 
                </td>
        </tr>
        <tr>
            <td>
            <p>Cultural Events</p>
               <center><img src="image/Cultural.jpg" style="height:361px; width:555px;"  /></center>   </td>
        </tr>
        <tr>
            <td><p>Sports Events</p>
              <center><img src="image/Sports.jpg" style="height:261px; width:586px;"  /></center>  
                </td>
        </tr>
        <tr>
            <td>
             <asp:Button ID="Button1" runat="server" Text="Register"  
           Height="41px" Width="107px" onclick="Button1_Click"  />

       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

       
        <asp:Button ID="Button2" runat="server" Text="Login" BackColor="#3399FF" 
        BorderStyle="None" Height="45px"  Width="104px" onclick="Button2_Click"  />
               </td>
        </tr>
    </table>

    
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<link href="StyleSheet2.css" rel="stylesheet" type="text/css" />
<p><a href="EventHead.aspx"> eventhead information</a></p>
<marquee direction = "up" style=" width:214px; height:1150px; margin-bottom: 0px;">
<div class="container blur">
    <ul class="slider" style=" width:214px; height:1150px; " >
      <li><p> Tech Fest 2019</p></li>
      <li><p> This to Inform all students thst TechFest2019</p></li>  
      <li><p> will be Celebrated on April 15 from morning 9am to evening 5pm</p></li>
      <li><p>at the College Auditorium With various Cultural Programmes.</p></li>
      <li><p> sub collector MR Ravi Teja IAS will grace the occasion as the chief Guest.</p></li>
      <li><p>Students Who Would like to Participate in various Programmes Should</p></li> 
      <li><p>Contact thier respective website latest by the April 10,2019</p></li>
      <li><p>Priyanka (Event in Charge).</p></li>
    </ul>
</div></marquee>
</asp:Content>

