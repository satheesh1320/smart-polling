<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Adminlogin.aspx.cs" Inherits="Adminlogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        font-weight: bold;
        color: #808000;
    }
    .style3
    {
        font-weight: bold;
        color: #808080;
    }
    .style4
    {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align=center>
<br />

<table>
<tr>
<td>
    <span class="style2">Admin Login</span>
</td>
</tr>
</table>
<br />
<table>
<tr>
<td class="style7">
    <span class="style3">User Name</span>
</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server" Width="181px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style4">
    <span class="style3">Password</span>
</td>
<td class="style3">
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="181px"></asp:TextBox>
</td>
</tr>

</table>

<table>
<tr>
<td>
    <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="True" 
        onclick="Button1_Click" />
</td>
<td>
    <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" />
</td>
</tr>
</table>
</div>
</asp:Content>

