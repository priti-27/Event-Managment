<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feadback.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <style type="text/css">
  .style1

        {

           
        }

        .style2
        {
            width: 367px;
        }

    </style>

</head>

<body>

  

    <div>

        <fieldset style="width: 40%;">

            <legend>Feedback</legend>

            <table cellpadding="2" cellspacing="5" >

               

                <tr>

                    <td width="80px">

                    </td>

                    <td class="style2">

                    </td>

                </tr>

                <tr>

                    <td width="80px">Name<span style="color: #CC3300"> *</span>

                    </td>

                    <td class="style2">

                        <asp:TextBox ID="txtName" runat="server" Width="200px"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ErrorMessage="Name Required" 
                        ForeColor="#FF3300" ControlToValidate="txtName"></asp:RequiredFieldValidator>

                    </td>

                </tr>

                <tr>

                    <td>

                        Subject <span class="style1">*</span>

                    </td>

                    <td class="style2">

                        <asp:TextBox ID="txtSubject" runat="server" Width="200px"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"

                            ErrorMessage="Subject Required" ForeColor="#FF3300"

                            ControlToValidate="txtSubject"></asp:RequiredFieldValidator>

                    </td>

                </tr>

                <tr>

                    <td>

                        E-mail<span style="color: #CC3300"> *</span>

                    </td>

                    <td class="style2">

                        <asp:TextBox ID="txtEmail" runat="server" Width="300px"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"

                            ErrorMessage="Email Required" ForeColor="#FF3300"

                            ControlToValidate="txtEmail"></asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"

                            ErrorMessage="Not a vailed email" ControlToValidate="txtEmail"

                            ForeColor="#FF3300"

                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                    </td>

                </tr>

                <tr>

                    <td>

                        Inquiry<span style="color: #CC3300"> </span>

                    </td>

                    <td class="style2">

                        <asp:TextBox ID="txtInquiry" runat="server" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox>

                    </td>

                </tr>

                <tr>

                    <td>

                        &nbsp;

                    </td>

                    <td class="style2">

                        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>

                    </td>

                </tr>

                <tr>

                    <td>

                        &nbsp;

                    </td>

                    <td class="style2">

                        <asp:Button ID="btnSubmit" runat="server" Text="Send" Width="100px"  />

                    </td>

                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td class="style2">
                       &nbsp;
                    </td>
                </tr>
            </table>
        </fieldset>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [ex] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [ex] ([id], [name], [rollno], [surname], [payment]) VALUES (@id, @name, @rollno, @surname, @payment)" 
            SelectCommand="SELECT * FROM [ex]" 
            UpdateCommand="UPDATE [ex] SET [name] = @name, [rollno] = @rollno, [surname] = @surname, [payment] = @payment WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="rollno" Type="Int32" />
                <asp:Parameter Name="surname" Type="String" />
                <asp:Parameter Name="payment" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="rollno" Type="Int32" />
                <asp:Parameter Name="surname" Type="String" />
                <asp:Parameter Name="payment" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None" Width="762px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                    SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="rollno" HeaderText="rollno" 
                    SortExpression="rollno" />
                <asp:BoundField DataField="surname" HeaderText="surname" 
                    SortExpression="surname" />
                <asp:BoundField DataField="payment" HeaderText="payment" 
                    SortExpression="payment" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
        <br />
    </div>

    </body>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

