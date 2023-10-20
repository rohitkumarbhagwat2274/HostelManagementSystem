<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="displayPayment.aspx.cs" Inherits="HostelManagementSystem.displayPayment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        <asp:TextBox ID="email" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>

    </p>
    <p>
        <asp:Button ID="back" runat="server" onclick="back_Click" style="height: 26px" 
            Text="Back" />
    </p>
    <div>
    
    </div>
    </form>
</body>
</html>
