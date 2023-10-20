<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="displayemployee.aspx.cs" Inherits="HostelManagementSystem.displayemployee" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #C0C0C0">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="email" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="empid" HeaderText="empid" SortExpression="empid" />
                <asp:BoundField DataField="empname" HeaderText="empname" 
                    SortExpression="empname" />
                <asp:BoundField DataField="designation" HeaderText="designation" 
                    SortExpression="designation" />
                <asp:BoundField DataField="department" HeaderText="department" 
                    SortExpression="department" />
                <asp:BoundField DataField="salary" HeaderText="salary" 
                    SortExpression="salary" />
                <asp:BoundField DataField="doj" HeaderText="doj" SortExpression="doj" />
                <asp:BoundField DataField="empphno" HeaderText="empphno" 
                    SortExpression="empphno" />
                <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" 
                    SortExpression="email" />
                <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:rohitdbConnectionString %>" 
            DeleteCommand="DELETE FROM [employee] WHERE [email] = @email" 
            InsertCommand="INSERT INTO [employee] ([empid], [empname], [designation], [department], [salary], [doj], [empphno], [email], [pass]) VALUES (@empid, @empname, @designation, @department, @salary, @doj, @empphno, @email, @pass)" 
            SelectCommand="SELECT * FROM [employee]" 
            UpdateCommand="UPDATE [employee] SET [empid] = @empid, [empname] = @empname, [designation] = @designation, [department] = @department, [salary] = @salary, [doj] = @doj, [empphno] = @empphno, [pass] = @pass WHERE [email] = @email">
            <DeleteParameters>
                <asp:Parameter Name="email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="empid" Type="String" />
                <asp:Parameter Name="empname" Type="String" />
                <asp:Parameter Name="designation" Type="String" />
                <asp:Parameter Name="department" Type="String" />
                <asp:Parameter Name="salary" Type="Int64" />
                <asp:Parameter Name="doj" Type="DateTime" />
                <asp:Parameter Name="empphno" Type="Int64" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="pass" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="empid" Type="String" />
                <asp:Parameter Name="empname" Type="String" />
                <asp:Parameter Name="designation" Type="String" />
                <asp:Parameter Name="department" Type="String" />
                <asp:Parameter Name="salary" Type="Int64" />
                <asp:Parameter Name="doj" Type="DateTime" />
                <asp:Parameter Name="empphno" Type="Int64" />
                <asp:Parameter Name="pass" Type="String" />
                <asp:Parameter Name="email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Back" />
    
        <br />
    
    </div>
    </form>
</body>
</html>
