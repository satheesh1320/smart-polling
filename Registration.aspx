<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-weight: bold;
            color: #339966;
            border-left-color: #ACA899;
            border-right-color: #C0C0C0;
            border-top-color: #ACA899;
            border-bottom-color: #C0C0C0;
            font-size: large;
        }
        .style3
        {
            height: 26px;
        }
        .style5
        {
            color: #808080;
            font-weight: bold;
            height: 26px;
            border-left-color: #ACA899;
            border-right-color: #C0C0C0;
            border-top-color: #ACA899;
            border-bottom-color: #C0C0C0;
        }
        .style6
        {
            color: #808080;
            font-weight: bold;
            border-left-color: #ACA899;
            border-right-color: #C0C0C0;
            border-top-color: #ACA899;
            border-bottom-color: #C0C0C0;
        }
        .style7
        {
            color: #808080;
            font-weight: bold;
            text-align: right;
        }
        .style8
        {
            height: 26px;
            text-align: right;
        }
        .style9
        {
            text-align: right;
        }
        .style10
        {
            color: #666666;
            font-weight: bold;
        }
        .style11
        {
            color: #666666;
            font-weight: bold;
            font-size: xx-small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div align=center>
<br />

<table>
<tr>
<td>
    <span class="style2">User Registration</span>
</td>
</tr>
</table>
<br />
<table>
<tr>
<td class="style7">
Voter ID
</td>
<td>
    <asp:TextBox ID="TextBox9" runat="server" Width="181px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style7">
User Name
</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server" Width="181px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style8">
    <span class="style5">Password</span>
</td>
<td class="style3">
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="181px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style7">
Full Name
</td>
<td>
    <asp:TextBox ID="TextBox3" runat="server" Width="181px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style7">
Address
</td>
<td>
    <asp:TextBox ID="TextBox4" runat="server" Height="63px" TextMode="MultiLine"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style7">
Mobile
</td>
<td>
    <asp:TextBox ID="TextBox5" runat="server" Width="181px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style9">
    <span class="style6">Email</span>
</td>
<td>
    <asp:TextBox ID="TextBox6" runat="server" Width="181px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style10">
Date of Birth
</td>
<td>
    <asp:TextBox ID="TextBox7" runat="server" Width="181px"></asp:TextBox>
</td>
<td>
    <span class="style11">MM/DD/YYYY</span>
</td>
</tr>
<tr>
<td>

</td>
<td>
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
        BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
        DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
        ForeColor="#003399" Height="62px" Width="111px" 
        onselectionchanged="Calendar1_SelectionChanged">
        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
        <WeekendDayStyle BackColor="#CCCCFF" />
        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
            Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
    </asp:Calendar>
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
        Text="Click Your Age" />
</td>
</tr>
<tr>
<td>
    <span class="style10">Age</span>
</td>
<td>
    <asp:TextBox ID="TextBox8" runat="server" Width="181px" Enabled="False">0</asp:TextBox>
</td>
<td>
    &nbsp;</td>
</tr>
</table>
<table>
<tr>
<td>
    <asp:Button ID="Button1" runat="server" Text="Register" Font-Bold="True" 
        onclick="Button1_Click" />
</td>
<td>
    <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" />
</td>
</tr>
</table>
</div>
</asp:Content>

