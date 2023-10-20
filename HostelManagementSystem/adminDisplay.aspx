<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminDisplay.aspx.cs" Inherits="HostelManagementSystem.adminDisplay" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="userid" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="userid" HeaderText="userid" ReadOnly="True" 
                    SortExpression="userid" />
                <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:rohitdbConnectionString %>" 
            DeleteCommand="DELETE FROM [login] WHERE [userid] = @userid" 
            InsertCommand="INSERT INTO [login] ([userid], [pass], [phone], [email]) VALUES (@userid, @pass, @phone, @email)" 
            SelectCommand="SELECT * FROM [login]" 
            UpdateCommand="UPDATE [login] SET [pass] = @pass, [phone] = @phone, [email] = @email WHERE [userid] = @userid">
            <DeleteParameters>
                <asp:Parameter Name="userid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="userid" Type="String" />
                <asp:Parameter Name="pass" Type="String" />
                <asp:Parameter Name="phone" Type="Int64" />
                <asp:Parameter Name="email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="pass" Type="String" />
                <asp:Parameter Name="phone" Type="Int64" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="userid" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <br />
        <asp:Button ID="back" runat="server" onclick="back_Click" Text="Back" />
    
    </div>
    </form>
</body>
</html>
