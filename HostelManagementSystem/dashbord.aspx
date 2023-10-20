<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashbord.aspx.cs" Inherits="HostelManagementSystem.dashbord" %>

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
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 260px;
        }
        .style3
        {
            height: 371px;
        }
        .style5
        {
            height: 40px;
        }
        .style6
        {
            height: 94px;
        }
        .style7
        {
            height: 86px;
        }
        .style8
        {
            height: 56px;
            width: 282px;
        }
        .style9
        {
            height: 56px;
            width: 320px;
        }
        .style11
        {
            height: 56px;
        }
        .style12
        {
            height: 39px;
        }
        .style13
        {
            height: 56px;
            width: 232px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td align="center" class="style6" colspan="4" 
                style="background-color: #C0C0C0; background-image: url('cmr1.jpg');">
                <asp:Image ID="Image1" runat="server" Height="80px" ImageUrl="~/cmr.jpg" 
                    Width="124px" />
            </td>
        </tr>
        <tr>
            <td align="center" class="style7" colspan="4" style="background-color: #FFFFFF">
                <asp:Label ID="Label2" runat="server" Text="HOSTEL MANAGEMENT"></asp:Label>
            &nbsp;SYSTEM<br />
                STUDENT DASHBOARD</td>
        </tr>
        <tr>
            <td align="left" class="style5" colspan="4" style="background-color: #C0C0C0">
                <asp:Label ID="Label4" runat="server" Text="Welcome : "></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Welcome"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style8" style="background-color: #C0C0C0">
                     <p><a class="btn btn-default " href ="studentchat.aspx" role="button" > Group Chat &raquo;</a></p>
            </td>
            <td align="center" class="style9" style="background-color: #C0C0C0">
                     <p><a class="btn btn-default " href ="userdetails.aspx" role="button" > UserDetails &raquo;</a></p>
            </td>
            <td align="center" class="style13" style="background-color: #C0C0C0">
                    <p><a class="btn btn-default " href ="studentpay.aspx" role="button" > Fee Pay &raquo;</a></p>
            </td>
            <td align="center" class="style11" style="background-color: #C0C0C0">
                     <p><a class="btn btn-default " href ="buyLaundry.aspx" role="button" > Buy New Coupon &raquo;</a></p>
            </td>
        </tr>
        <tr>
            <td align="center" class="style3" colspan="2" rowspan="2" 
                style="background-color: #C0C0C0">
                <asp:Label ID="Label5" runat="server" 
                    Text=" Which date the the highest selary taken by the which customer"></asp:Label>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                    BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" 
                    Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" 
                    TitleFormat="Month" Width="400px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" 
                        ForeColor="#333333" Height="10pt" />
                    <DayStyle Width="14%" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" 
                        Font-Size="8pt" ForeColor="#333333" Width="1%" />
                    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" 
                        ForeColor="White" Height="14pt" />
                    <TodayDayStyle BackColor="#CCCC99" />
                </asp:Calendar>
            </td>
            <td class="style3" colspan="2" style="background-color: #C0C0C0">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:rohitdbConnectionString %>" 
                    SelectCommand="SELECT * FROM [meal]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="day" HeaderText="day" SortExpression="day" />
                        <asp:BoundField DataField="breakFast" HeaderText="breakFast" 
                            SortExpression="breakFast" />
                        <asp:BoundField DataField="lunch" HeaderText="lunch" SortExpression="lunch" />
                        <asp:BoundField DataField="dinner" HeaderText="dinner" 
                            SortExpression="dinner" />
                       
                    </Columns>
                </asp:GridView>
                
            </td>
        </tr>
        <tr>
            <td align="right" class="style12" colspan="2" style="background-color: #C0C0C0">
                    <p><a class="btn btn-default " href ="stu_emp_dashbord.aspx" role="button" > Logout &raquo;</a></p>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>