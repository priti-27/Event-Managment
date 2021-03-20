<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="vv.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

  
        .style5
        {width: 679px;
            height: 56px;
        }
  
        .style4
        {
            width: 149px;
        }
  
        .style3
        {
            width: 190px;
        }
        .style6
    {
        margin-right: 5px;
        margin-left: 300px;
        background-color: white;
        text-align: center;
        border-radius: 8px;
        width: 1121px;
        height: 56px;
        margin-top: 5px;
        margin-bottom: 5px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">

    <form id="form1" runat="server">
    <table>
        <tr>
            <td class="style6">
                <font style="float:left;">
                <asp:Label ID="Label2" runat="server" class="label" Text="username."></asp:Label>
                &nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbname" runat="server" class="label"></asp:Label>
                </font>
            </td>
            <td class="style5">
                <font style="float:right;">
                <asp:Label ID="Label12" runat="server" class="label" Text="password."></asp:Label>
                &nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblpass" runat="server" class="label"></asp:Label>
                </font>
            </td>
        </tr>
    </table>
    <center>
        <h2>
            welcome to tech fest</h2>
    </center>
    <table>
        <tr>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" class="label" Text="Name"></asp:Label>
            </td>
            <td class="style3">
                <asp:Label ID="lblname" runat="server" class="label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label15" runat="server" class="label" Text="username."></asp:Label>
            </td>
            <td class="style3">
                <asp:Label ID="lbluser" runat="server" class="label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label3" runat="server" class="label" Text="collegename"></asp:Label>
            </td>
            <td class="style3">
                <asp:Label ID="lblTcollege" runat="server" class="label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label4" runat="server" class="label" Text="Mobile no"></asp:Label>
            </td>
            <td class="style3">
                <asp:Label ID="lblmobile" runat="server" class="label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label5" runat="server" class="label" Text="Email"></asp:Label>
            </td>
            <td class="style3">
                <asp:Label ID="lblDest" runat="server" class="label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label13" runat="server" class="label" Text="events"></asp:Label>
            </td>
            <td class="style3">
                <asp:Label ID="lblAday" runat="server" class="label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label6" runat="server" class="label" Text="amount"></asp:Label>
            </td>
            <td class="style3">
                <asp:Label ID="lblAtime" runat="server" class="label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <center>
        <asp:Button ID="Button1" runat="server" Height="33px"  
            Text="payment" Width="111px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="33px"  
            Text="Cancel" Width="111px" />
    </center>
    <br />
    <br />
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label11" runat="server" class="label" Text="Total Fare" 
        Visible="False"></asp:Label>
    <asp:Label ID="lblFare" runat="server" class="label" Visible="False"></asp:Label>
    </form>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

