<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="UpcomingEvent.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            margin-right: 5px;
            margin-left: 300px;
            background-color: white;
            text-align: right;
            border-radius: 8px;
            width: 1040px;
            height: 121px;
            margin-top: 5px;
            margin-bottom: 5px;
            font-size: x-large;
            font-family: Arial, Helvetica, sans-serif;
        }
        
        .style6
        {
            height: 121px;
        }
        
        .style7
        {
            margin-right: 5px;
            margin-left: 300px;
            background-color: white;
            text-align: right;
            border-radius: 8px;
            width: 1040px;
            height: 45px;
            margin-top: 5px;
            margin-bottom: 5px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
        }
        
        .style8
        {
            height: 45px;
            text-align: left;
        }
        
        .style9
        {
            margin-right: 5px;
            margin-left: 300px;
            background-color: white;
            text-align: right;
            border-radius: 8px;
            width: 1040px;
            height: 81px;
            margin-top: 5px;
            margin-bottom: 5px;
        }
        
        .style10
        {
            height: 81px;
            text-align: left;
        }
        
        .style11
        {
            height: 121px;
            width: 171px;
            text-align: left;
        }
        .style12
        {
            height: 45px;
            width: 171px;
            text-align: left;
        }
        .style13
        {
            height: 81px;
            width: 171px;
            text-align: left;
        }
        
        .style14
        {
            text-decoration: underline;
            color: #0066FF;
            font-family: "Times New Roman", Times, serif;
            font-size: xx-large;
            background-color: #FFFFFF;
        }
        
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
    color: DodgerBlue;
    font-family: Aharoni;
    display: inline-block;
}

input[type=submit] {
        border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: DodgerBlue;
            color: white;
            font-family:Aharoni;
            margin-top: 6px;
            padding: 20px 30px;
            border-radius: 4px;
            cursor: pointer;
            align: center;
            text-align: justify;
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
        
        .style15
        {
            margin-right: 5px;
            margin-left: 300px;
            background-color: white;
            text-align: right;
            border-radius: 8px;
            width: 1040px;
            height: 121px;
            margin-top: 5px;
            margin-bottom: 5px;
            color: #000000;
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">  
 <h3><p class="style14"><strong>Upcoming Event</strong></p></h3>
    <div>  
      
        <table style="width:100%; height: 363px;">  
            <tr>  
                <td class="style5">  
                    <strong>Image name:</strong></td>  
                <td class="style11">  
                    <asp:TextBox ID="TextBox1" runat="server" Width="405px"></asp:TextBox>
                    <br />
                           <font>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="*" 
            ForeColor="red"></asp:RequiredFieldValidator>
        </font>
        <br />
                </td>  
                <br />
         
                <td class="style6">  
                     </td>  
            </tr>  
            <tr>  
                <td class="style7">  
                    <strong>Image:</strong></td>  
                <td class="style12">  
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="413px" />
                </td>  
                <td class="style8">  
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <br />
                </td>  
            </tr> 
            <tr>
            <td class="style15">  
                    <strong>description:</strong></td>  
                <td class="style11">  
                    <asp:TextBox ID="TextBox2" runat="server" Width="416px"></asp:TextBox>
                    <br />
                           <font>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="*" 
            ForeColor="red"></asp:RequiredFieldValidator>
        </font><br />
                </td>  
                <td class="style6">  
                     </td>
            </tr> 
            <tr>  
                <td class="style9">  
                     </td>  

                
                <td class="style13">  
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                        Text="upload" />
                </td>  
                <td class="style10">  
                     <br />
                     </td>  
            </tr>  
        </table>  
      
    </div>
    
</asp:Content>



