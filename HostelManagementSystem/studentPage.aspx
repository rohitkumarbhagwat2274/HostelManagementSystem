<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentPage.aspx.cs" Inherits="HostelManagementSystem.studentPage" %>

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
        .style7
        {
            height: 12px;
        }
        .style15
        {
            height: 67px;
        }
        .style22
        {
            height: 26px;
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
            height: 85px;
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
            width: 665px;
        }
        .style38
        {
            height: 13px;
            width: 665px;
        }
        .style39
        {
            height: 25px;
            width: 665px;
        }
        .style40
        {
            height: 24px;
            width: 665px;
        }
        .style41
        {
            height: 28px;
            width: 665px;
        }
        .style42
        {
            height: 19px;
            width: 665px;
        }
        .style43
        {
            height: 14px;
            width: 665px;
        }
        .style44
        {
            height: 12px;
            width: 665px;
        }
        .style45
        {
            height: 26px;
            width: 665px;
        }
        .style46
        {
            height: 32px;
        }
        .style47
        {
            height: 32px;
            width: 665px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td align="center" class="style15" colspan="2" 
                style="background-color: #C0C0C0">
                <asp:Label ID="Label1" runat="server" Text="Student Details"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style37" style="background-color: #C0C0C0">
                <asp:Label ID="Label2" runat="server" Text="Registration Id :"></asp:Label>
            </td>
            <td class="style35" style="background-color: #C0C0C0">
                <asp:TextBox ID="txtreg" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style37" style="background-color: #C0C0C0">
                <asp:Label ID="Label3" runat="server" Text="Student Name :"></asp:Label>
            </td>
            <td class="style35" style="background-color: #C0C0C0">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style38" style="background-color: #C0C0C0">
                <asp:Label ID="Label4" runat="server" Text="Government Id :"></asp:Label>
            </td>
            <td class="style36" style="background-color: #C0C0C0">
                <asp:DropDownList ID="dgovname" runat="server">
                    <asp:ListItem>Adhar</asp:ListItem>
                    <asp:ListItem>Voter Id</asp:ListItem>
                    <asp:ListItem>Passport</asp:ListItem>
                    <asp:ListItem>Pan Card</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" class="style39" style="background-color: #C0C0C0">
                <asp:Label ID="Label5" runat="server" Text="Government Id number :"></asp:Label>
            </td>
            <td class="style33" style="background-color: #C0C0C0">
                <asp:TextBox ID="txtgovid" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtgovid" ErrorMessage="Please provide government id number" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style40" style="background-color: #C0C0C0">
                <asp:Label ID="Label6" runat="server" Text="Date of join :"></asp:Label>
            </td>
            <td class="style34" style="background-color: #C0C0C0">
                <asp:TextBox ID="txtdoj" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtdoj" ErrorMessage="please provide date of join" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style41" style="background-color: #C0C0C0">
                <asp:Label ID="Label7" runat="server" Text="House number :"></asp:Label>
            </td>
            <td class="style29" style="background-color: #C0C0C0">
                <asp:TextBox ID="txthouse" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style42" style="background-color: #C0C0C0">
                <asp:Label ID="Label8" runat="server" Text="Post Office :"></asp:Label>
            </td>
            <td class="style30" style="background-color: #C0C0C0">
                <asp:TextBox ID="txtpo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style43" style="background-color: #C0C0C0">
                <asp:Label ID="Label9" runat="server" Text="Police Station :"></asp:Label>
            </td>
            <td class="style31" style="background-color: #C0C0C0">
                <asp:TextBox ID="txtps" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style44" style="background-color: #C0C0C0">
                <asp:Label ID="Label10" runat="server" Text="District :"></asp:Label>
            </td>
            <td class="style7" style="background-color: #C0C0C0">
                <asp:TextBox ID="txtdist" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style45" style="background-color: #C0C0C0">
                <asp:Label ID="Label11" runat="server" Text="City :"></asp:Label>
            </td>
            <td class="style22" style="background-color: #C0C0C0">
                <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style45" style="background-color: #C0C0C0">
                <asp:Label ID="Label12" runat="server" Text="Pincode :"></asp:Label>
            </td>
            <td class="style22" style="background-color: #C0C0C0">
                <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtpin" ErrorMessage="Please provide pincode" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style45" style="background-color: #C0C0C0">
                <asp:Label ID="Label13" runat="server" Text="Phone number :"></asp:Label>
            </td>
            <td class="style22" style="background-color: #C0C0C0">
                <asp:TextBox ID="txtphno" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtphno" ErrorMessage="Please provide mobile number" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style45" style="background-color: #C0C0C0">
                <asp:Label ID="Label14" runat="server" Text="Email :"></asp:Label>
            </td>
            <td class="style22" style="background-color: #C0C0C0">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Please provide mobile number" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style45" style="background-color: #C0C0C0">
                <asp:Label ID="Label15" runat="server" Text="Veg / Nonveg :"></asp:Label>
            </td>
            <td class="style22" style="background-color: #C0C0C0">
                <asp:DropDownList ID="dfood" runat="server">
                    <asp:ListItem>Veg</asp:ListItem>
                    <asp:ListItem Value="Nonveg">Nonveg</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" class="style45" style="background-color: #C0C0C0">
                <asp:Label ID="Label16" runat="server" Text="Password :"></asp:Label>
            </td>
            <td class="style22" style="background-color: #C0C0C0">
                <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtpwd" ErrorMessage="Please provide password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style45" style="background-color: #C0C0C0">
                <asp:Label ID="Label17" runat="server" Text="Confirm password :"></asp:Label>
            </td>
            <td class="style22" style="background-color: #C0C0C0">
                <asp:TextBox ID="txtconpwd" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpwd" ControlToValidate="txtconpwd" 
                    ErrorMessage="Password dosent match" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style47" 
                style="background-color: #C0C0C0; margin-left: 280px;">
                <asp:Label ID="Label18" runat="server" Text="Upload Student Photo :"></asp:Label>
            </td>
            <td align="left" class="style46" 
                style="background-color: #C0C0C0; margin-left: 280px;">
            <asp:FileUpload ID="FileUpload1" 
                    Style="background-image: url('images/img_new.png');" runat="server" 
                    Height="22px" /></td>
        </tr>
        <tr>
            <td align="center" class="style32" colspan="2" 
                style="background-color: #C0C0C0; margin-left: 280px;">
                <asp:Button ID="btnback" runat="server" Text="Back" BorderStyle="Double" CausesValidation ="false"
                    onclick="btnback_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" Text="Update" BorderStyle="Double" CausesValidation="false"
                    onclick="btnupdate_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" BorderStyle="Double" Text="Save" 
                    onclick="btnsave_Click" />
&nbsp;
            </td>
        </tr>
    </table>
    </form>
</body>
</html>