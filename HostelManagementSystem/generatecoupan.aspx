<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="generatecoupan.aspx.cs" Inherits="HostelManagementSystem.generatecoupan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Generate Coupan</title>
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />

     
</head>
<body>
    <form id="form1" runat="server">
     <div class="center-page">
            <h1>Create New laundry coupon</h1>
            <h1></h1>
            <div class="form-group">
                <label class="col-xs-11">Created by user name:</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="username" runat="server" CssClass="form-control" Text='<%# Session["username"] %>' ReadOnly="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="username" ErrorMessage="User Name is Required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

           
            <div class="form-group">
                <label class="col-xs-11">Coupon Number:</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="CouponNumber" runat="server" CssClass="form-control" placeholder="Enter Coupon Number"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="CouponNumber" ErrorMessage="Coupon Code/Number  is Required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="col-xs-11">Manufacturing Date:</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="mfg" runat="server" CssClass="form-control" type="date"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="mfg" ErrorMessage="Manufacturing Date  is Required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="col-xs-11">Expiry Date:</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="exp" runat="server" CssClass="form-control" type="date"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="exp" ErrorMessage="Expiry Date  is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

             <div class="form-group">
                <label class="col-xs-11">Amount of the coupon:</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="rs" runat="server" CssClass="form-control" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="rs" ErrorMessage="Amount of the coupon is Required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="col-xs-11">status:</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="sta" runat="server" CssClass="form-control" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="sta" ErrorMessage="Status is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

           
            <div class="form-group">
                <div class="col-xs-11">
                <h1></h1>
                    <asp:Button ID="save" runat="server" CssClass="btn-success" Text="save" 
                        onclick="save_Click" />
                    <asp:Button ID="back" runat="server" CssClass="btn-success" Text="Back" 
                        onclick="back_Click" />
                        
                  
                        <a class="btn btn-default " href="monthlycoupon.aspx" role="button">Allote Student Laundry Coupon »</a>
                        
                        <center><h1>About coupons Code</h1></center>

                </div>
                <div class="form-group">

                    <label class="col-xs-4"> </label>
                    <h1></h1>

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="couponid" DataSourceID="SqlDataSource1" CellPadding="4" 
                        ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="couponid" HeaderText="Coupon Id" 
                            InsertVisible="False" ReadOnly="True" SortExpression="couponid " />
                        <asp:BoundField DataField="Createdbyuserid" HeaderText="Created By User Id " 
                            SortExpression="Createdbyuserid" />
                        <asp:BoundField DataField="couponNumber" HeaderText="Coupon Code " 
                            SortExpression="couponNumber" />
                        <asp:BoundField DataField="mfg" HeaderText="Active Date " SortExpression="mfg" />
                        <asp:BoundField DataField="exp" HeaderText="Expiry Date " SortExpression="exp" />
                        <asp:BoundField DataField="rs" HeaderText="Amount"  />
                        <asp:BoundField DataField="status" HeaderText="Status" 
                            SortExpression="status" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:rohitdbConnectionString %>" 
                    DeleteCommand="DELETE FROM [couponTable] WHERE [couponid] = @couponid" 
                    InsertCommand="INSERT INTO [couponTable] ([Createdbyuserid], [couponNumber], [mfg], [exp], [rs] [status]) VALUES (@Createdbyuserid, @couponNumber, @mfg, @exp, @rs, @status)" 
                    SelectCommand="SELECT * FROM [couponTable]" 
                    UpdateCommand="UPDATE [couponTable] SET [Createdbyuserid] = @Createdbyuserid, [couponNumber] = @couponNumber, [mfg] = @mfg, [exp] = @exp, [rs]=@rs, [status] = @status WHERE [couponid] = @couponid">
                    <DeleteParameters>
                        <asp:Parameter Name="couponid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Createdbyuserid" Type="String" />
                        <asp:Parameter Name="couponNumber" Type="String" />
                        <asp:Parameter DbType="Date" Name="mfg" />
                        <asp:Parameter DbType="Date" Name="exp" />
                        <asp:Parameter Name="rs" Type="String" />
                        <asp:Parameter Name="status" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Createdbyuserid" Type="String" />
                        <asp:Parameter Name="couponNumber" Type="String" />
                        <asp:Parameter DbType="Date" Name="mfg" />
                        <asp:Parameter DbType="Date" Name="exp" />
                        <asp:Parameter Name="rs" Type="String" />
                        <asp:Parameter Name="status" Type="String" />
                        <asp:Parameter Name="couponid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                
                
                <div class="col-xs-11">
                    
                </div>
            </div>
            </div>
            </div>
    </form>
</body>
</html>
