<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employee_payment.aspx.cs" Inherits="HostelManagementSystem.employee_payment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 500px;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        .submit-button {
            display: block;
            width: 100%;
            padding: 10px;
            font-size: 16px;
            font-weight: bold;
            text-align: center;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #996600">
    <div align="center" style="background-color: #996600">
    
        <h1>EMPLOYEE PAYMENT</h1>
        <table class="style1">
            <tr>
                <td class="style2">
                    Employee email id</td>
                <td align="left">
                    <asp:DropDownList ID="empid" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Employee Name</td>
                <td align="left">
                    <asp:TextBox ID="empname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Payment Date
                </td>
                <td align="left">
                    <asp:TextBox ID="paydate"  runat="server" TextMode="Date"  ForeColor="Black" 
                        Width="165px" Height="26px"/>&nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Payment Amount</td>
                <td align="left">
                    <asp:TextBox ID="payamount" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Transaction id</td>
                <td align="left">
                    <asp:TextBox ID="transid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Transaction Recept</td>
                <td align="left">
                    <asp:FileUpload ID="FileUpload1" Style="background-image: url('images/img_new.png');" runat="server" />&nbsp;</td>
            </tr>
            <tr>
                <td class="style2" align="right">
                    <asp:Button ID="pay" runat="server" Text="Add Payment" onclick="pay_Click" />
                </td>
                <td align="left">
                    <asp:Button ID="back" runat="server" Text="Back" onclick="back_Click" />
                </td>
            </tr>
            </table>
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="enp_pay_id" 
        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="enp_pay_id" HeaderText="enp_pay_id" ReadOnly="True" 
                SortExpression="enp_pay_id" />
            <asp:BoundField DataField="emp_name" HeaderText="emp_name" 
                SortExpression="emp_name" />
            <asp:BoundField DataField="emp_email" HeaderText="emp_email" 
                SortExpression="emp_email" />
            <asp:BoundField DataField="pay_date" HeaderText="pay_date" 
                SortExpression="pay_date" />
            <asp:BoundField DataField="pay_Amount" HeaderText="pay_Amount" 
                SortExpression="pay_Amount" />
            <asp:BoundField DataField="Transfer_id" HeaderText="Transfer_id" 
                SortExpression="Transfer_id" />
                <asp:TemplateField HeaderText="Picture">
                <ItemTemplate>
                <img src="student_pic/<%#Eval("pic") %>" style="width:150px;height:150px" />
                </ItemTemplate></asp:TemplateField>
            
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:rohitdbConnectionString %>" 
        DeleteCommand="DELETE FROM [employee_pay] WHERE [enp_pay_id] = @enp_pay_id" 
        InsertCommand="INSERT INTO [employee_pay] ([enp_pay_id], [emp_name], [emp_email], [pay_date], [pay_Amount], [Transfer_id], [pic]) VALUES (@enp_pay_id, @emp_name, @emp_email, @pay_date, @pay_Amount, @Transfer_id, @pic)" 
        SelectCommand="SELECT * FROM [employee_pay]" 
        
        UpdateCommand="UPDATE [employee_pay] SET [emp_name] = @emp_name, [emp_email] = @emp_email, [pay_date] = @pay_date, [pay_Amount] = @pay_Amount, [Transfer_id] = @Transfer_id, [pic] = @pic WHERE [enp_pay_id] = @enp_pay_id">
        <DeleteParameters>
            <asp:Parameter Name="enp_pay_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="enp_pay_id" Type="String" />
            <asp:Parameter Name="emp_name" Type="String" />
            <asp:Parameter Name="emp_email" Type="String" />
            <asp:Parameter Name="pay_date" Type="DateTime" />
            <asp:Parameter Name="pay_Amount" Type="Double" />
            <asp:Parameter Name="Transfer_id" Type="String" />
            <asp:Parameter Name="pic" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="emp_name" Type="String" />
            <asp:Parameter Name="emp_email" Type="String" />
            <asp:Parameter Name="pay_date" Type="DateTime" />
            <asp:Parameter Name="pay_Amount" Type="Double" />
            <asp:Parameter Name="Transfer_id" Type="String" />
            <asp:Parameter Name="pic" Type="String" />
            <asp:Parameter Name="enp_pay_id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
