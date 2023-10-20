<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employeeuser.aspx.cs" Inherits="HostelManagementSystem.employeeuser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 774px;
            margin-bottom: 92px;
        }
        .style29
        {
            height: 28px;
        }
        .style30
        {
            height: 19px;
        }
        .style31
        {
            height: 14px;
        }
        .style32
        {
            height: 47px;
        }
        .style33
        {
            height: 25px;
        }
        .style34
        {
            height: 24px;
        }
        .style35
        {
            height: 23px;
        }
        .style36
        {
            height: 13px;
        }
        .style37
        {
            height: 23px;
            width: 650px;
        }
        .style38
        {
            height: 13px;
            width: 650px;
        }
        .style39
        {
            height: 25px;
            width: 650px;
        }
        .style40
        {
            height: 24px;
            width: 650px;
        }
        .style41
        {
            height: 28px;
            width: 650px;
        }
        .style42
        {
            height: 19px;
            width: 650px;
        }
        .style43
        {
            height: 14px;
            width: 650px;
        }
        .style44
        {
            height: 12px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td align="center" class="style44" colspan="2" 
                style="background-color: #C0C0C0">
                <asp:Label ID="Label1" runat="server" Text="Emplyee Details"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style37" style="background-color: #C0C0C0">
                <asp:Label ID="Label2" runat="server" Text="Employee Id :"></asp:Label>
            </td>
            <td class="style35" style="background-color: #C0C0C0">
                <asp:TextBox ID="txtempid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style37" style="background-color: #C0C0C0">
                <asp:Label ID="Label3" runat="server" Text="Employee Name :"></asp:Label>
            </td>
            <td class="style35" style="background-color: #C0C0C0">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style38" style="background-color: #C0C0C0">
                <asp:Label ID="Label4" runat="server" Text="Deignation :"></asp:Label>
            </td>
            <td class="style36" style="background-color: #C0C0C0">
                <asp:TextBox ID="txtdesig" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style39" style="background-color: #C0C0C0">
                <asp:Label ID="Label5" runat="server" Text="Department :"></asp:Label>
            </td>
            <td class="style33" style="background-color: #C0C0C0">
                <asp:TextBox ID="txtdepart" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style40" style="background-color: #C0C0C0">
                <asp:Label ID="Label6" runat="server" Text="Salary :"></asp:Label>
            </td>
            <td class="style34" style="background-color: #C0C0C0">
                <asp:TextBox ID="txtsalary" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style41" style="background-color: #C0C0C0">
                <asp:Label ID="Label7" runat="server" Text="Date of join :"></asp:Label>
            </td>
            <td class="style29" style="background-color: #C0C0C0">
                

                <div class="form-group">            
                    
                    <div class="col-sm-6"><asp:TextBox ID="txtdoj"  runat="server"  ForeColor="Black" class="form-control"/></div>
                </div>  
            </td>
        </tr>
        <tr>
            <td align="right" class="style42" style="background-color: #C0C0C0">
                <asp:Label ID="Label8" runat="server" Text="Phone number :"></asp:Label>
            </td>
            <td class="style30" style="background-color: #C0C0C0">
                <asp:TextBox ID="txtphno" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style43" style="background-color: #C0C0C0">
                <asp:Label ID="Label9" runat="server" Text="Email id :"></asp:Label>
            </td>
            <td class="style31" style="background-color: #C0C0C0">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style32" colspan="2" 
                style="background-color: #C0C0C0; margin-left: 280px;">
                <asp:Button ID="btnback" runat="server" Text="Back" onclick="btnback_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;
            </td>
        </tr>
    </table>
    </form>
</body>
</html>