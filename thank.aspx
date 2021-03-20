<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="thank.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    
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
   

     .style2
     {
         text-decoration: underline;
         font-size: xx-large;
         font-family: "Arial Black";
     }
   

     .style3
     {
         font-size: xx-large;
         background-color: #0099FF;
     }
   

    </style>
    <p class="style3"><strong>Thank you now you can enjoy the fest.</strong></p>
    <p class="style2"><img src="image/thank.jpg" style="width: 40%; height: 11%; margin-left:40px;" 
            align="center" /></p>
    
    <h3><p>Thank you now you can enjoy the fest.</p></h3>

    <p class="style2">
        <img src="image/smile.jpg" style="width: 40%; height: 11%; margin-left:40px;" 
            align="center"/> 
           
       <a href="Home.aspx" style="text-decoration: underline">Home</a>
    </p>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

