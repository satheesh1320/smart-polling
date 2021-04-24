<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-weight: bold;
            font-size: medium;
            color: #339933;
        }
        .style3
        {
            color: #808080;
            font-weight: bold;
        }
        .style4
        {
            color: #808080;
            font-weight: bold;
            border-left-color: #ACA899;
            border-right-color: #C0C0C0;
            border-top-color: #ACA899;
            border-bottom-color: #C0C0C0;
        }
        .style5
        {
            text-align: right;
        }
        .style6
        {
            color: #FF6600;
            font-weight: bold;
        }
        .style7
        {
            color: #0066FF;
            font-weight: bold;
        }
    .style8
    {
        color: #00FF00;
        font-weight: bold;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align=center>
<br />

<table>
<tr>
<td>
    <span class="style2">User Login</span>
</td>
</tr>
</table>
<br />
<table>
<tr>
<td class="style7">
    <span class="style4">User Name</span>
</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server" Width="181px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style5">
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
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">New User?</asp:LinkButton>
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
<br />
<br />
<br />
<br />

<br />
<br />
<table>
<tr>
<td>
    <span class="style8">Registration Date</span><span class="style6">&nbsp; </span>&nbsp;
</td>
<td>
    <span class="style8">From</span>&nbsp; &nbsp;
    <asp:Label ID="Label1" runat="server" Text="Label" style="font-weight: 700"></asp:Label>
</td>
<td>
    <span class="style6">&nbsp;</span><span class="style8">To</span>&nbsp; &nbsp;<asp:Label ID="Label2" 
        runat="server" Text="Label" style="font-weight: 700"></asp:Label>
</td>
</tr>
</table>
</div>
</asp:Content>

