<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminResult.aspx.cs" Inherits="AdminResult" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #CC0000;
            font-weight: bold;
            text-decoration: blink;
            font-size: x-large;
        }
        .style4
        {
            font-weight: bold;
            color: #FF0000;
        }
        .style5
        {
            text-align: right;
        }
        .style6
        {
            text-align: right;
            font-weight: bold;
        }
        .style7
        {
            color: #FF6600;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<div align=center>
<br />
<br />
<table>
<tr>
<td>
    <span class="style1">Result</span>
</td>
</tr>
</table>
<br />

    <br />

<table>
<tr>
<td class="style5">
    <b>
        <asp:Label ID="Label6" runat="server" Text="DMK"></asp:Label></b>
</td>
<td>
    &nbsp;
    <asp:Label ID="Label1" runat="server" Text="" CssClass="style4"></asp:Label>
</td>
</tr>
<tr>
<td>

</td>
<td>

</td>
</tr>
<tr>
<td class="style6">
    <asp:Label ID="Label8" runat="server" Text="ADMK"></asp:Label>
</td>
<td>
    &nbsp;
    <asp:Label ID="Label2" runat="server" Text="" CssClass="style4"></asp:Label>
</td>
</tr>
<tr>
<td>

</td>
<td>

</td>
</tr>
<tr>
<td class="style5">
    <b>
        <asp:Label ID="Label9" runat="server" Text="DMDK"></asp:Label></b>
</td>
<td>
    &nbsp;
    <asp:Label ID="Label3" runat="server" Text="" CssClass="style4"></asp:Label>
</td>
</tr>
<tr>
<td>

</td>
<td>

</td>
</tr>
<tr>
<td class="style5">
    <b>
        <asp:Label ID="Label10" runat="server" Text="MDMK"></asp:Label></b>
</td>
<td>
    &nbsp;
    <asp:Label ID="Label4" runat="server" Text="" CssClass="style4"></asp:Label>
</td>
</tr>
<tr>
<td>

</td>
<td>

</td>
</tr>
<tr>
<td class="style6">
    <asp:Label ID="Label11" runat="server" Text="CONGRESS"></asp:Label>
</td>
<td>
    &nbsp;
    <asp:Label ID="Label5" runat="server" Text="" CssClass="style4"></asp:Label>
</td>
</tr>
<tr>
<td>

</td>
<td>

</td>
</tr>


</table>
    <br />
    <br />
    <br />
<br />

<table>
<tr>
<td>
    <span class="style7">Highest Voting Candidate is</span>
</td>
<td>
    <asp:Label ID="Label7" runat="server" Text="Label" CssClass="style1"></asp:Label>
</td>
</tr>

</table>
</div>
</asp:Content>

