<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admindashboard.aspx.cs" Inherits="HostelManagementSystem.admindashboard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
            width: 243px;
        }
        .style10
        {
            height: 56px;
            width: 369px;
        }
        .style11
        {
            height: 56px;
        }
        .style12
        {
            height: 39px;
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
                <br />
                ADMIN DASHBOARD</td>
        </tr>
        <tr>
            <td align="left" class="style5" colspan="4" style="background-color: #C0C0C0">
                <asp:Label ID="Label4" runat="server" Text="Welcome : "></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Welcome"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style8" style="background-color: #C0C0C0">
                <asp:Button ID="btnemp" runat="server" BorderStyle="Double" Text="Empoyee" 
                    onclick="btnemp_Click" />
            </td>
            <td align="center" class="style9" style="background-color: #C0C0C0">
                <asp:Button ID="btnstud" runat="server" BorderStyle="Double" Text="Student" 
                    onclick="btnstud_Click" />
            </td>
            <td align="center" class="style10" style="background-color: #C0C0C0">
                <asp:Button ID="btnuser" runat="server" BorderStyle="Double" 
                    Text="Create Admin" onclick="btnuser_Click" />
            </td>
            <td align="center" class="style11" style="background-color: #C0C0C0">
                <asp:Button ID="btnchat" runat="server" BorderStyle="Double" Text="Chat" 
                    onclick="btnchat_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="doemppay" runat="server" BorderStyle="Double" 
                    onclick="doemppay_Click" Text="Do Employee's Payment" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                <br />
                <div class="col-lg-4">
                   <img class="img-circle" src="student_pic/coupan.jpg" alt="thumb" width="140" height="140" />
                   <h2> Generate Student Londery Coupan</h2>
               
                   <p><a class="btn btn-default " href ="generatecoupan.aspx" role="button" > View More &raquo;</a></p>
               </div>
            </td>
            <td class="style3" colspan="2" style="background-color: #C0C0C0">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="White" 
                    BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" 
                    DataSourceID="SqlDataSource1" GridLines="None">
                    <Columns>
                        <asp:BoundField DataField="mealid" HeaderText="MealId" 
                            SortExpression="mealid" />
                        <asp:BoundField DataField="day" HeaderText="DAY" SortExpression="day" />
                        <asp:BoundField DataField="breakFast" HeaderText="BreakFast" 
                            SortExpression="breakFast" />
                        <asp:BoundField DataField="lunch" HeaderText="Lunch" SortExpression="lunch" />
                        <asp:BoundField DataField="dinner" HeaderText="Dinner" 
                            SortExpression="dinner" />
                         <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:rohitdbConnectionString %>" 
                    DeleteCommand="DELETE FROM [meal] WHERE [mealid] = @mealid" 
                    InsertCommand="INSERT INTO [meal] ([day], [breakFast], [lunch], [dinner] VALUES (@day,@breakFast,@lunch,@dinner)" 
                    SelectCommand="SELECT * FROM [meal]"
                    UpdateCommand="UPDATE [meal] SET [day] = @day, [breakFast] = @breakFast, [lunch] = @lunch, [dinner] = @dinner WHERE [mealid] = @mealid">
                     <DeleteParameters>
                <asp:Parameter Name="mealid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="day" Type="String" />
                <asp:Parameter Name="breakFast" Type="String" />
                <asp:Parameter Name="lunch" Type="String" />
                <asp:Parameter Name="Dinner" Type="String" /></InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="day" Type="String" />
                <asp:Parameter Name="breakFast" Type="String" />
                <asp:Parameter Name="lunch" Type="String" />
                <asp:Parameter Name="Dinner" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="right" class="style12" colspan="2" style="background-color: #C0C0C0">
                <asp:Button ID="btnlogout" runat="server" BorderStyle="Double" Text="Log out" 
                    onclick="btnlogout_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
