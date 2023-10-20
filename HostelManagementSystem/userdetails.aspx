<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userdetails.aspx.cs" Inherits="HostelManagementSystem.userdetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 791px;
        }
        .style2
        {
            height: 57px;
        }
        .style3
        {
            height: 58px;
        }
        .style4
        {
            width: 748px;
        }
        .style5
        {
            height: 58px;
            width: 748px;
        }
        .style6
        {
            height: 76px;
        }
        .style7
        {
            width: 748px;
            height: 44px;
        }
        .style8
        {
            height: 44px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td align="center" class="style2" colspan="2">
               <h1> <asp:Label ID="Label15" runat="server" Text="USER DETAILS"></asp:Label></h1>
            </td>
        </tr>
        <tr>
            <td align="right" class="style7">
                <asp:Label ID="Label1" runat="server" Text="REGISTRATION NUMBER : "></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="txtreg" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                <asp:Label ID="Label2" runat="server" Text="NAME : "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                <asp:Label ID="Label3" runat="server" Text="GOVERNMENT ID :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtgovidname" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                <asp:Label ID="Label4" runat="server" Text="GOVERNMENT ID NUMBER :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtgovid" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                <asp:Label ID="Label5" runat="server" Text="DATE OF JOIN ;"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdoj" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                <asp:Label ID="Label6" runat="server" Text="HOUSE NUMBER :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txthouse" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                <asp:Label ID="Label7" runat="server" Text="POST OFFICE :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpo" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                <asp:Label ID="Label8" runat="server" Text="POLICE STATION :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtps" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                <asp:Label ID="Label9" runat="server" Text="DISTRICT :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdist" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                <asp:Label ID="Label10" runat="server" Text="CITY :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcity" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                <asp:Label ID="Label11" runat="server" Text="PIN CODE :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpin" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style5">
                <asp:Label ID="Label12" runat="server" Text="PHONE NUMBER :"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtphno" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style5">
                <asp:Label ID="Label13" runat="server" Text="EMAIL ID :"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtemail" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                <asp:Label ID="Label14" runat="server" Text="FOOD LIKE :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtfoodlike" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style6" colspan="2">
                <asp:Button ID="btnback" runat="server" BackColor="#FF6600" 
                    BorderStyle="Double" Text="Back" onclick="btnback_Click1" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>