<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chat1.aspx.cs" Inherits="HostelManagementSystem.chat1" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 759px;
            margin-bottom: 4px;
        }
        .style2
        {
            height: 493px;
        }
        .style4
        {
            height: 86px;
        }
        .style5
        {
            height: 83px;
        }
    </style>
</head>

<form id="form1" runat="server">
<table class="style1">
    <tr>
        <td align="center" class="style5" colspan="2">
          <h1><asp:Label ID="Label1" runat="server" ClientIDMode="Static" Text="GROUP CHAT"></asp:Label></h1>
        </td>
    </tr>
    <tr>
        <td bgcolor="#CCCCCC" colspan="2" class="style4">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Logged in as :"></asp:Label>
            <asp:Label ID="txtuser" runat="server" Font-Bold="True" Text=" user"></asp:Label>
            
            <asp:Label ID="display" runat="server" Text="display" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            Candle stick will show chat type and date<br />
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource2">
                <series>
                    <asp:Series ChartType="Candlestick" Name="Series1" XValueMember="said" 
                        YValueMembers="date" YValuesPerPoint="4">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
            <br />
            Pichart will show username and chatting date<br />
            <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2">
                <series>
                    <asp:Series ChartType="Pie" Name="Series1" XValueMember="user_name" 
                        YValueMembers="messageid">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:rohitdbConnectionString %>" 
                SelectCommand="SELECT * FROM [message]"></asp:SqlDataSource>
        </td>
        <td class="style2" bgcolor="White">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" 
                DataKeyNames="messageid">
                <Columns>
                    <asp:BoundField DataField="user_name" HeaderText="user_name" ReadOnly="True" 
                        SortExpression="user_name" />
                    <asp:BoundField DataField="said" HeaderText="said" 
                        SortExpression="said" />
                    <asp:BoundField DataField="send_message" HeaderText="send_message" 
                        SortExpression="send_message" />
                    <asp:BoundField DataField="date" HeaderText="date" 
                        SortExpression="date" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:rohitdbConnectionString %>" 
                DeleteCommand="DELETE FROM [message] WHERE [messageid] = @messageid" 
                InsertCommand="INSERT INTO [message] ([user_name], [said], [send_message], [group_name], [date]) VALUES (@user_name, @said, @send_message, @group_name, @date)" 
                SelectCommand="SELECT * FROM [message]" 
                
                UpdateCommand="UPDATE [message] SET [messageid] = @messageid, [user_name], @user_name [said] = @said, [send_message] = @send_message, [group_name] = @group_name, [date] = @date WHERE [messageid] = @messageid">
                <DeleteParameters>
                    <asp:Parameter Name="messageid" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="user_name" Type="String" />
                    <asp:Parameter Name="said" Type="String" />
                    <asp:Parameter Name="send_message" Type="String" />
                    <asp:Parameter Name="group_name" Type="String" />
                    <asp:Parameter Name="date" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="messageid" Type="Int32" />
                    <asp:Parameter Name="said" Type="String" />
                    <asp:Parameter Name="send_message" Type="String" />
                    <asp:Parameter Name="group_name" Type="String" />
                    <asp:Parameter Name="date" Type="DateTime" />
                    <asp:Parameter Name="user_name" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </td>
    </tr>
    <tr>
        <td align="left" bgcolor="#CCCCCC">
            <asp:Button ID="button1" runat="server" Height="50px" Text="Back" CausesValidation ="false" 
                Width="115px" BackColor="Red" BorderStyle="Double" Font-Bold="True" 
                onclick="button1_Click" />
        </td>
        <td align="right" bgcolor="#CCCCCC">
            Select Query Type:<asp:DropDownList ID="said" runat="server">
                <asp:ListItem>Generic</asp:ListItem>
                <asp:ListItem>Query</asp:ListItem>
                <asp:ListItem>Request</asp:ListItem>
                <asp:ListItem>Suggestion</asp:ListItem>
                <asp:ListItem>Complement</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="RequiredFieldValidator" ForeColor="#CC3300" 
                ControlToValidate="txtmessage">Please type the message</asp:RequiredFieldValidator>
            <asp:TextBox ID="txtmessage" runat="server" Height="54px" Width="612px" 
                BorderStyle="Solid"></asp:TextBox>
            <asp:Button ID="btnok" runat="server" Height="50px" Text="Send" 
                Width="115px" BackColor="Lime" BorderStyle="Double" Font-Bold="True" 
                onclick="btnok_Click1" />
        </td>
    </tr>
</table>
</form>
</html>