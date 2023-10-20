<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentdetails.aspx.cs" Inherits="HostelManagementSystem.studentdetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="email" DataSourceID="SqlDataSource1" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="regno" HeaderText="Registation Number" 
                    SortExpression="regno" />
                <asp:BoundField DataField="sname" HeaderText="Student Name" 
                    SortExpression="sname" />
                <asp:BoundField DataField="gov_id_name" HeaderText="Government Id Name" 
                    SortExpression="gov_id_name" />
                <asp:BoundField DataField="gov_id" HeaderText="Government Id" 
                    SortExpression="gov_id" />
                <asp:BoundField DataField="doj" HeaderText="Date of join" 
                    SortExpression="doj" />
                <asp:BoundField DataField="house" HeaderText="House" SortExpression="house" />
                <asp:BoundField DataField="po" HeaderText="Post Office" SortExpression="po" />
                <asp:BoundField DataField="ps" HeaderText="Police Station" 
                    SortExpression="ps" />
                <asp:BoundField DataField="dist" HeaderText="District" SortExpression="dist" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="pincord" HeaderText="PinCode" 
                    SortExpression="pincord" />
                <asp:BoundField DataField="phno" HeaderText="Phone Number" 
                    SortExpression="phno" />
                <asp:BoundField DataField="email" HeaderText="Email Id" ReadOnly="True" 
                    SortExpression="email" />
                <asp:BoundField DataField="food_like" HeaderText="Like Food" 
                    SortExpression="food_like" />
                <asp:BoundField DataField="pass" HeaderText="PassWord" SortExpression="pass" />
                <asp:BoundField DataField="pic" HeaderText="Picture" SortExpression="pic" />

                <asp:TemplateField HeaderText="Picture">
                <ItemTemplate>
                <img src="student_pic/<%#Eval("pic") %>" style="width:150px;height:150px" />
                </ItemTemplate></asp:TemplateField>

                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />

                

            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:rohitdbConnectionString %>" 
            DeleteCommand="DELETE FROM [student1] WHERE [email] = @email" 
            InsertCommand="INSERT INTO [student1] ([regno], [sname], [gov_id_name], [gov_id], [doj], [house], [po], [ps], [dist], [city], [pincord], [phno], [email], [food_like], [pass], [pic]) VALUES (@regno, @sname, @gov_id_name, @gov_id, @doj, @house, @po, @ps, @dist, @city, @pincord, @phno, @email, @food_like, @pass, @pic)" 
            SelectCommand="SELECT * FROM [student1]" 
            
            UpdateCommand="UPDATE [student1] SET [regno] = @regno, [sname] = @sname, [gov_id_name] = @gov_id_name, [gov_id] = @gov_id, [doj] = @doj, [house] = @house, [po] = @po, [ps] = @ps, [dist] = @dist, [city] = @city, [pincord] = @pincord, [phno] = @phno, [food_like] = @food_like, [pass] = @pass, [pic] = @pic WHERE [email] = @email">
            <DeleteParameters>
                <asp:Parameter Name="email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="regno" Type="String" />
                <asp:Parameter Name="sname" Type="String" />
                <asp:Parameter Name="gov_id_name" Type="String" />
                <asp:Parameter Name="gov_id" Type="String" />
                <asp:Parameter Name="doj" Type="String" />
                <asp:Parameter Name="house" Type="String" />
                <asp:Parameter Name="po" Type="String" />
                <asp:Parameter Name="ps" Type="String" />
                <asp:Parameter Name="dist" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="pincord" Type="Int32" />
                <asp:Parameter Name="phno" Type="Int64" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="food_like" Type="String" />
                <asp:Parameter Name="pass" Type="String" />
                <asp:Parameter Name="pic" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="regno" Type="String" />
                <asp:Parameter Name="sname" Type="String" />
                <asp:Parameter Name="gov_id_name" Type="String" />
                <asp:Parameter Name="gov_id" Type="String" />
                <asp:Parameter Name="doj" Type="String" />
                <asp:Parameter Name="house" Type="String" />
                <asp:Parameter Name="po" Type="String" />
                <asp:Parameter Name="ps" Type="String" />
                <asp:Parameter Name="dist" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="pincord" Type="Int32" />
                <asp:Parameter Name="phno" Type="Int64" />
                <asp:Parameter Name="food_like" Type="String" />
                <asp:Parameter Name="pass" Type="String" />
                <asp:Parameter Name="pic" Type="String" />
                <asp:Parameter Name="email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="BACK" />
    
    </div>
    </form>
</body>
</html>
