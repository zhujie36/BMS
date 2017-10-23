<%@ Page Title="" Language="C#" MasterPageFile="~/RNacigator.Master" AutoEventWireup="true" CodeBehind="IndexReader.aspx.cs" Inherits="Reader.IndexReader" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center; width:100%">
        <br />
    <br /><br />
    <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/3.jpg" OnClick="ImageButton2_Click" /><br />
    <asp:Label ID="Label5" runat="server" Text="图书查找"></asp:Label>
    <br /><br />
    <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/images/7.jpg" OnClick="ImageButton3_Click" /><br />
    <asp:Label ID="Label6" runat="server" Text="个人信息修改"></asp:Label>
    </div>
</asp:Content>
