﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="spaydisplay.aspx.cs" Inherits="HostelManagementSystem.spaydisplay" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Back" />
    
    </div>
    </form>
</body>
</html>
