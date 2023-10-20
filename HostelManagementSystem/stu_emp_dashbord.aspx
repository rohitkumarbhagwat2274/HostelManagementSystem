<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stu_emp_dashbord.aspx.cs" Inherits="HostelManagementSystem.stu_emp_dashbord" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            margin-bottom: 274px;
            height: 810px;
        }
        .style3
        {
            height: 211px;
        }
        .style12
        {
            height: 54px;
        }
        .style13
        {
            height: 89px;
        }
        .style16
        {
            height: 27px;
            width: 726px;
        }
        .style17
        {
            height: 27px;
        }
        .style18
        {
            height: 51px;
        }
        .style19
        {
            height: 28px;
            width: 726px;
        }
        .style20
        {
            height: 28px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style13" 
                style="background-color: #FFFFFF; background-image: url('cmr1.jpg');" align="center" 
                colspan="2" bgcolor="White">
                <asp:Image ID="Image1" runat="server" Height="109px" ImageUrl="~/cmr.jpg" 
                    Width="206px" />
            </td>
        </tr>
        <tr>
            <td class="style18" style="background-color: #FFFFFF" align="center" 
                colspan="2">
                <asp:Label ID="Label4" runat="server" Text="HOSTEL MANAGEMENT SYSTEM"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style19" style="background-color: #FFFFFF" align="right">
                <asp:DropDownList ID="dlog" runat="server">
                    <asp:ListItem>employee</asp:ListItem>
                    <asp:ListItem>student</asp:ListItem>
                    <asp:ListItem>admin</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label1" runat="server" Text="USERNAME : "></asp:Label>
            </td>
            <td class="style20" style="background-color: #FFFFFF">
                <asp:TextBox ID="txtuser" runat="server" Height="25px" Width="155px" 
                    BorderStyle="Groove"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtuser" ErrorMessage="User id cannot be empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16" style="background-color: #FFFFFF" align="right">
                <asp:Label ID="Label2" runat="server" Text="PASSWORD :"></asp:Label>
            </td>
            <td class="style17" style="background-color: #FFFFFF">
                <asp:TextBox ID="txtpwd" runat="server" BorderStyle="Groove" Height="25px" 
                    Width="155px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtuser" ErrorMessage="Passwod cannot be empty" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style12" style="background-color: #FFFFFF" colspan="2" 
                align="center">
                <asp:Button ID="forgot" runat="server" BorderStyle="Double"  ValidationGroup="False"
                    Text="FORGOT PSSWORD" onclick="forgot_Click" />
                <asp:Button ID="btnlogin" runat="server" BorderStyle="Double" 
                    onclick="btnlogin_Click" Text="LOGIN" Width="81px" />
            </td>
        </tr>
        <tr>
            <td class="style3" style="background-color: #FFFFFF" colspan="2" align="center">
                CMR University, Bangalore CMR University(CMRU), Bangalore is a private 
                University in the state of karnatka, established under the Act 45 of 2013. The 
                University fosters creative communities where new ideas are nurtured, new 
                discoveries made and new creations shared. CMU works with the vision &quot;To nature 
                creative thinkers who will drive positive global change&quot;. CMR University aims to 
                promite and undertake the advancement of University education across a plethora 
                of disciplines viz architecture, design, engineering, law, management, economics 
                &amp; commerce, social sciences &amp; humanities, education, and science studies. The 
                Universityl also aims to equip students with the required skills and knowledge 
                to purpus a successfull career in their chosen field of study.</td>
        </tr>
    </table>
    </form>
</body>
</html>