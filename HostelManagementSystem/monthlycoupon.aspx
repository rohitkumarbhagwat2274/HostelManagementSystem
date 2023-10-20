<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="monthlycoupon.aspx.cs" Inherits="HostelManagementSystem.monthlycoupon" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Allote Student Laundry Coupon</h1>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="lblRegNo" runat="server" Text="Registration Number"></asp:Label>
                        <asp:DropDownList ID="ddlRegNo" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlRegNo_SelectedIndexChanged"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblCouponNo" runat="server" Text="Coupon Number"></asp:Label>
                        <asp:DropDownList ID="ddlCouponNo" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCouponNo_SelectedIndexChanged"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblStudentName" runat="server" Text="Student Name"></asp:Label>
                        <asp:TextBox ID="txtStudentName" runat="server" ReadOnly="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtStudentName" ErrorMessage="Student Name is Required" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" ReadOnly="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtEmail" ErrorMessage="Email id is Required" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblExpiryDate" runat="server" Text="Coupon Expiry Date"></asp:Label>
                        <asp:TextBox ID="txtCouponDate" runat="server" ReadOnly="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtCouponDate" ErrorMessage="Coupon Espiry Date is Required" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblStatus" runat="server" Text="Status"></asp:Label>
                        <asp:DropDownList ID="ddlStatus" runat="server">
                            <asp:ListItem>Active</asp:ListItem>
                            <asp:ListItem>Disabled</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="btnProvide" runat="server" Text="Provide" OnClick="btnProvide_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>