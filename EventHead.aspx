<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EventHead.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            text-decoration: underline;
            font-size: xx-large;
            font-family: "Times New Roman", Times, serif;
            color: #3399FF;
        }
            marquee
{
    
    color:DodgerBlue;

    height: 229px;
    width: 652px;
}
        
        .style3
        {
            width: 100%;
            border: 1px solid #1E90FF;
            background-color: #CCCCCC;
        }
        .style4
        {
            width: 163px;
        }
        .style5
        {
            width: 185px;
        }
        .style6
        {
            text-decoration: underline;
        }
        .style7
        {
            width: 163px;
            text-decoration: underline;
        }
        .style8
        {
            width: 185px;
            text-decoration: underline;
        }
        .style9
        {
            font-family: "Arial Narrow";
            font-size: large;
            text-decoration: underline;
        }
        .style10
        {
            text-align: center;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    
<h3><p class="style2"><strong>Event Information</strong></p></h3>
    
 <marquee>

 <div class="ws_images">
<a href="#"><img src="image/college_1.jpg" alt="" title="" id="id1" style="width: 244px; height:229px; margin-right: 0px" /></a>
<a href="#"><img src="image/college_2.jpg" alt="" title="" id="id2" style="width: 244px; height:229px; margin-right: 0px"/></a>
<a href="#"><img src="image/college_3.jpg" alt="" title="" id="id3" style="width: 244px; height:229px; margin-right: 0px"/></a>
<a href="#"><img src="image/college_4.jpg" alt="" title="" id="id4" style="width: 244px; height:229px; margin-right: 0px"/></a>
<a href="#"><img src="image/college_5.jpg" alt="" title="" id="id5" style="width: 244px; height:229px; margin-right: 0px"/></a>
<a href="#"><img src="image/college_6.jpg" alt="" title="" id="id6" style="width: 244px; height:229px; margin-right: 0px"/></a>

</div></marquee>
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [EventHead]"></asp:SqlDataSource>

    <br />
    <asp:Label ID="Label1" runat="server" Text="EventHead"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <p style="text-align: justify">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="4" CellSpacing="2" DataKeyNames="E_id" 
            DataSourceID="SqlDataSource1" ForeColor="Black" Width="653px" 
            Height="177px">
            <Columns>
                <%--<asp:BoundField DataField="E_id" HeaderText="E_id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="E_id" />--%>
                <asp:BoundField DataField="E_name" HeaderText="EventName" 
                    SortExpression="E_name" />
                <asp:BoundField DataField="E_time" HeaderText="EventTime" 
                    SortExpression="E_time" />
                <asp:BoundField DataField="E_date" HeaderText="EventDate" 
                    SortExpression="E_date" />
                <asp:BoundField DataField="E_head" HeaderText="EventHead" 
                    SortExpression="E_head" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </p>
    <h3 class="style10">
        I<span class="style9">nformation About Sub Events</span></h3>
    <table class="style3">
        <tr>
            <td bgcolor="White" class="style7">
                <strong>EventName</strong></td>
            <td bgcolor="White" class="style8">
                <strong>EventTime</strong></td>
            <td bgcolor="White" class="style7">
                <strong>EventDate</strong></td>
            <td bgcolor="White" class="style6">
                <strong>EventHead</strong></td>
        </tr>
        <tr>
            <td bgcolor="White" class="style4" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                Coding Event</td>
            <td bgcolor="White" class="style5" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                10am-12pm</td>
            <td bgcolor="White" class="style4" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                17march2019</td>
            <td bgcolor="White" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                Jovita Mendis</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style4" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                Blind coding</td>
            <td bgcolor="White" class="style5" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                12pm-2pm</td>
            <td bgcolor="White" class="style4" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                17march2019</td>
            <td bgcolor="White" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                Hitesh Jadhav</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style4" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                Untrusted</td>
            <td bgcolor="White" class="style5" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                2pm-4pm</td>
            <td bgcolor="White" class="style4" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                17march2019</td>
            <td bgcolor="White" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                Dilip Yadav</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style4" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                dance</td>
            <td bgcolor="White" class="style5" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                9am-11pm</td>
            <td bgcolor="White" class="style4" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                19march2019</td>
            <td bgcolor="White" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                Priti Maurya</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style4" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                singing</td>
            <td bgcolor="White" class="style5" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                11am-1pm</td>
            <td bgcolor="White" class="style4" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                19march2019</td>
            <td bgcolor="White" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                Chetan Rajput</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style4" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                drama</td>
            <td bgcolor="White" class="style5" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                2pm-5pm</td>
            <td bgcolor="White" class="style4" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                19march2019</td>
            <td bgcolor="White" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                Nidhi Rathod</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style4" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                cricket</td>
            <td bgcolor="White" class="style5" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                9am-12pm</td>
            <td bgcolor="White" class="style4" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                21march2019</td>
            <td bgcolor="White" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                Anupriti Thopen</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style4" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                football</td>
            <td bgcolor="White" class="style5" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                1pm-4pm</td>
            <td bgcolor="White" class="style4" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                21march2019</td>
            <td bgcolor="White" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                Sonu Maurya</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style4" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                table tennies</td>
            <td bgcolor="White" class="style5" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                9pm-4pm</td>
            <td bgcolor="White" class="style4" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                21march2019</td>
            <td bgcolor="White" 
                style="table-layout: fixed; border-collapse: separate; border-spacing: inherit; empty-cells: hide; caption-side: inherit">
                Rahul Machger</td>
        </tr>
    </table>
    <br />
 

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

