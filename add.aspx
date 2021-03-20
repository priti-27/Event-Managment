<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="add.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [admintb] WHERE [a_id] = @a_id" 
        InsertCommand="INSERT INTO [admintb] ([a_name], [a_sevent], [a_venue], [a_payment]) VALUES (@a_name, @a_sevent, @a_venue, @a_payment)" 
        SelectCommand="SELECT * FROM [admintb]" 
        UpdateCommand="UPDATE [admintb] SET [a_name] = @a_name, [a_sevent] = @a_sevent, [a_venue] = @a_venue, [a_payment] = @a_payment WHERE [a_id] = @a_id">
        <DeleteParameters>
            <asp:Parameter Name="a_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="a_name" Type="String" />
            <asp:Parameter Name="a_sevent" Type="String" />
            <asp:Parameter Name="a_venue" Type="String" />
            <asp:Parameter Name="a_payment" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="a_name" Type="String" />
            <asp:Parameter Name="a_sevent" Type="String" />
            <asp:Parameter Name="a_venue" Type="String" />
            <asp:Parameter Name="a_payment" Type="Int32" />
            <asp:Parameter Name="a_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" DataKeyNames="a_id" DataSourceID="SqlDataSource2" 
        ForeColor="Black" Height="394px" Width="669px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="a_id" HeaderText="a_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="a_id" />
            <asp:BoundField DataField="a_name" HeaderText="a_name" 
                SortExpression="a_name" />
            <asp:BoundField DataField="a_sevent" HeaderText="a_sevent" 
                SortExpression="a_sevent" />
            <asp:BoundField DataField="a_venue" HeaderText="a_venue" 
                SortExpression="a_venue" />
            <asp:BoundField DataField="a_payment" HeaderText="a_payment" 
                SortExpression="a_payment" />
            <asp:HyperLinkField HeaderText="Add" NavigateUrl="~/AddEvent.aspx" Text="Insert" />
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
    &nbsp;




</asp:Content>


