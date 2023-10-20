<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentpay.aspx.cs" Inherits="HostelManagementSystem.studentpay" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="css/custom.css" rel="stylesheet" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title> Student Payment</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Student Payment</h2>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" class="col-xs-11" runat="server" Text="Student Name:"></asp:Label>
                    </td>
                    <td>
                    <div class="form-group">
                        <asp:TextBox ID="txtsname" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Student Name is Required" ControlToValidate="txtsname" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" class="col-xs-11" runat="server" Text="Email:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtemail" class="form-control" runat="server"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="Email id is Required" 
                            ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Amount:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtrs" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtrs" ErrorMessage="Amount is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Transaction ID:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txttransid" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txttransid" ErrorMessage="Transaction Id is Required" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnadd" class="btn btn-primary" runat="server" Text="Add" OnClick="btnadd_Click1" />
                        <asp:Button ID="btnback" class="btn btn-primary" runat="server" Text="Back" ValidationGroup="false" OnClick="btnback_Click1" />
                        <asp:Button ID="btndis" class="btn btn-primary" runat="server" Text="Display" ValidationGroup="false" OnClick="btndis_Click" />
                    </td>
                </tr>
            </table>
    </div>
    </form>
</body>
</html>
