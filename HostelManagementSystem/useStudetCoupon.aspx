<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="useStudetCoupon.aspx.cs" Inherits="HostelManagementSystem.useStudetCoupon" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Use My Coupon</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <h1>Buy New Coupon</h1>

                <div class="form-group">
                    <label class="col-xs-11">Buyer User Name:</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="username" runat="server" CssClass="form-control" Text='<%# Session["username"] %>'></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <h3><label class="col-xs-11">Coupon Details:</label></h3>
                    <div class="col-xs-11">
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-xs-11">Coupon Number:</label>
                    <div class="col-xs-11">
                        <asp:DropDownList ID="ddlCouponNumber" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-xs-11">
                        <asp:Button ID="btnBuyNow" runat="server" Text="Use" CssClass="btn btn-success" OnClick="btnBuyNow_Click" />
                        <asp:Button ID="back" runat="server" Text="Back" CssClass="btn btn-success" OnClick="back_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
