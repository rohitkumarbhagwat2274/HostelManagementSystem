<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buyLaundry.aspx.cs" Inherits="HostelManagementSystem.buyLaundry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Buy Laundry</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="css/custom.css" rel="stylesheet" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="Styles/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <h1>Buy New Coupon</h1>
                    <h3>
                        <asp:Label ID="status" runat="server" Text="Coupon Details"></asp:Label>
                    </h3>
                    <div>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                            CellPadding="2" DataKeyNames="couponid" DataSourceID="SqlDataSource1" 
                            ForeColor="Black" GridLines="None">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <Columns>
                                <asp:BoundField DataField="couponNumber" HeaderText="couponNumber" 
                                    SortExpression="couponNumber" />
                                <asp:BoundField DataField="mfg" HeaderText="mfg" SortExpression="mfg" />
                                <asp:BoundField DataField="exp" HeaderText="exp" SortExpression="exp" />
                                <asp:BoundField DataField="rs" HeaderText="rs" SortExpression="rs" />
                                <asp:BoundField DataField="status" HeaderText="status" 
                                    SortExpression="status" />
                            </Columns>
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <SortedAscendingCellStyle BackColor="#FAFAE7" />
                            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                            <SortedDescendingCellStyle BackColor="#E1DB9C" />
                            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                        </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:rohitdbConnectionString %>" 
                                    SelectCommand="SELECT * FROM [couponTable]"></asp:SqlDataSource>
                    </div>
                    <p>&nbsp;</p>
                </div>
            </div>
             <div class="row">
                <div class="col-xs-12">
                    <div class="form-group">
                        <label class="col-xs-1 control-label">User Name:</label>
                        <div class="col-xs-11">
                            <asp:TextBox ID="username" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>

                     <div class="row">
                <div class="col-xs-12">
                    <div class="form-group">
                        <label class="col-xs-1 control-label">Coupon Number:</label>
                        <div class="col-xs-11">
                            <asp:DropDownList ID="ddlCouponNumber" runat="server" OnSelectedIndexChanged="ddlCouponNumber_SelectedIndexChanged" AutoPostBack="True">
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group">
                        <label class="col-xs-1 control-label">Price:</label>
                        <div class="col-xs-11">
                            <asp:Label ID="rs" runat="server" CssClass="form-control-static"></asp:Label>
                            <br />
                            <asp:Image ID="Image1" runat="server" 
                                ImageUrl="~/ROHIT KUMAR paytm qr code.jpeg" Height="383px" Width="387px" />
                        </div>
                    </div>
                </div>
                <asp:Label ID="Active" runat="server" Text="Active" Visible="False"></asp:Label>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group">
                        <label class="col-xs-1 control-label">Transaction ID:</label>
                        <div class="col-xs-11">
                            <asp:TextBox ID="transid" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="form-group">
                        <div class="col-xs-11">
                            
                            <asp:Button ID="btnBuyNow" runat="server" Text="Buy Now" CssClass="btn-success" OnClick="btnBuyNow_Click" />
                            <a class="btn btn-default" href="useStudetCoupon.aspx" role="button">Use Active Coupon &raquo;</a><br />
                            <a class="btn btn-default" href="dashbord.aspx" role="button">Go Back &raquo;</a><br />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <h1>Students Active/Disable Coupon Status</h1>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="monthlycouponid" DataSourceID="SqlDataSource2">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                            <asp:BoundField DataField="couponNumber" HeaderText="Coupon Number" SortExpression="couponNumber" />
                            <asp:BoundField DataField="coupondate" HeaderText="Coupon Date" SortExpression="coupondate" />
                            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:rohitdbConnectionString %>" SelectCommand="SELECT * FROM [studentMonthlycouponTable]"></asp:SqlDataSource>
                </div>
            </div>
        
    </form>
</body>
</html>
