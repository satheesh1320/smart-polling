<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ViewCandidate.aspx.cs" Inherits="View_Product" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #808000;
            font-weight: bold;
        }
        .style3
        {
            color: #00FF00;
            font-weight: bold;
        }
        .style4
        {
            text-align: center;
            width: 158px;
        }
        .style5
        {
            width: 224px;
            height: 190px;
        }
        .style6
        {
            width: 222px;
            height: 191px;
        }
        .style7
        {
            width: 222px;
            height: 192px;
        }
        .style8
        {
            width: 221px;
            height: 190px;
        }
        .style9
        {
            width: 227px;
            height: 190px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align=center>
    <span class="style1">
    <br />
Candidate Details<br />
    </span>&nbsp;</div>
    <br />
    <div align=right>
<marquee behavior=alternate class="style3">Vote Your Candidate</marquee>
</div>
<div align=Center>
<table>
<tr>
<td>
<img src="Images/6342_S_dmk-symbol.jpg" class="style5" />
</td>
<td class="style4">
        <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
        Font-Bold="True" ForeColor="#663300" Text="Click here" 
            oncheckedchanged="RadioButton1_CheckedChanged" /><br />
        <span class="style3">Vote Your Candidate</span>
</td>
</tr>
<tr>
<td>
<img src="Images/two_leaves_symbol[5].png" class="style6" />
</td>
<td class="style4">
        <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
        Font-Bold="True" ForeColor="#663300" Text="Click here" 
            oncheckedchanged="RadioButton2_CheckedChanged" /><br />
        <span class="style3">Vote Your Candidate</span>
</tr>

<tr>
<td>
<img src="Images/DMDK-symbol.jpg" class="style7" />
</td>
<td class="style4">
        <asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="True" 
        Font-Bold="True" ForeColor="#663300" Text="Click here" 
            oncheckedchanged="RadioButton3_CheckedChanged" /><br />
        <span class="style3">Vote Your Candidate</span>
</td>
</tr>
<tr>
<td>
<img src="Images/m-d-m-k-symbol.jpg" class="style8" />
</td>
<td class="style4">
        <asp:RadioButton ID="RadioButton4" runat="server" AutoPostBack="True" 
        Font-Bold="True" ForeColor="#663300" Text="Click here" 
            oncheckedchanged="RadioButton4_CheckedChanged" /><br />
        <span class="style3">Vote Your Candidate</span>
</tr>


<tr>
<td>
<img src="Images/congress-party-symbol.jpg"
        class="style9" />
</td>
<td class="style4">
        <asp:RadioButton ID="RadioButton5" runat="server" AutoPostBack="True" 
        Font-Bold="True" ForeColor="#663300" Text="Click here" 
            oncheckedchanged="RadioButton5_CheckedChanged" /><br />
        <span class="style3">Vote Your Candidate</span>
</td>

</tr>



</table>

<table>
<tr>
<td>
    <asp:Button ID="Button1" runat="server" Text="Vote" BackColor="Red" 
        Font-Bold="True" ForeColor="White" Height="28px" onclick="Button1_Click" 
        Width="123px" />
</td>
</tr>
</table>
</div>

</asp:Content>

