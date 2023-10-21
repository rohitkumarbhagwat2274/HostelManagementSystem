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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" CellSpacing="2" DataKeyNames="couponid" 
                DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Createdbyuserid" HeaderText="Createdbyuserid" 
                        SortExpression="Createdbyuserid" />
                    <asp:BoundField DataField="couponNumber" HeaderText="couponNumber" 
                        SortExpression="couponNumber" />
                    <asp:BoundField DataField="mfg" HeaderText="mfg" SortExpression="mfg" />
                    <asp:BoundField DataField="exp" HeaderText="exp" SortExpression="exp" />
                    <asp:BoundField DataField="rs" HeaderText="rs" SortExpression="rs" />
                    <asp:BoundField DataField="status" HeaderText="status" 
                        SortExpression="status" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:rohitdbConnectionString %>" 
                SelectCommand="SELECT * FROM [couponTable]"></asp:SqlDataSource>
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