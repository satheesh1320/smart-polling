<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Userhome.aspx.cs" Inherits="Userhome" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #FF0000;
            font-weight: bold;
        }
    .style2
    {
        font-weight: bold;
        font-size: medium;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align=center>
<br />
    <br />
    <br />
    <br />
    <br />
    <br />
<table>
<tr>
<td>
    <span class="style1">Welcome </span>
   
    &nbsp;<asp:Label ID="Label1" runat="server" Text="Label" CssClass="style2"></asp:Label></td>
</tr>
</table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</div>
</asp:Content>

