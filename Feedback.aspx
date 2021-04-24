<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" Title="Untitled Page" %>

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
    <span class="style2">Send Your Feedback</span>
</td>
</tr>
</table>
<br />
<table>
<tr>
<td class="style4">
    <span class="style3">Full Name</span>
</td>
<td>
    <asp:TextBox ID="TextBox3" runat="server" Width="181px"></asp:TextBox>
</td>
</tr>

<tr>
<td class="style4">
    <span class="style3">Email</span>
</td>
<td>
    <asp:TextBox ID="TextBox6" runat="server" Width="181px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style4">
    <span class="style3">Comment</span>
</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server" Width="181px" Height="102px" 
        TextMode="MultiLine"></asp:TextBox>
</td>
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
</asp:Content>

