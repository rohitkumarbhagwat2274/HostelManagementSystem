<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="startapp.aspx.cs" Inherits="HostelManagementSystem.startapp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            background-color: #808080;
        }
        .style2
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="left" style="background-color: #C0C0C0">
    
        <table class="style1">
            <tr>
                <td align="center">
                    <h1>CMR UNIVERSITY HOSTEL</h1></td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" BorderStyle="Double" 
            ForeColor="#CC6600" onclick="Button1_Click" Text="Login" BorderWidth="5px" 
            CssClass="style2" Height="50px" Width="50px" />
        <marquee><asp:Image ID="Image5" runat="server" Height="63px" ImageUrl="~/cmr.jpg" />        <h3> Here Boy's as well as Girls's both hostel with proper security Gard's are available 24X7 hours </h3></marquee>
        <br />
        <table class="style2">
            <tr>
                <td align="center"><h4>
                CMR University, Bangalore CMR University(CMRU), Bangalore is a private 
                University in the state of karnatka, established under the Act 45 of 2013. The 
                University fosters creative communities where new ideas are nurtured, new 
                discoveries made and new creations shared. CMU works with the vision &quot;To nature 
                creative thinkers who will drive positive global change&quot;. CMR University aims to 
                promite and undertake the advancement of University education across a plethora 
                of disciplines viz architecture, design, engineering, law, management, economics 
                &amp; commerce, social sciences &amp; humanities, education, and science studies. The 
                Universityl also aims to equip students with the required skills and knowledge 
                to purpus a successfull career in their chosen field of study.</h4>
                </td>
            </tr>
        </table>
        <table class="style2">
            <tr>
                <td align="center">
        <asp:Image ID="Image1" runat="server" ImageAlign="Top" ImageUrl="~/cmr1.jpg" />
                </td>
            </tr>
            <tr>
                <td align="center" style="margin-left: 120px">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/hostel bedroom1.jpg" />
                    <br />
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/room.jpg" Width="957px" />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/dining.jpg" />
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>

