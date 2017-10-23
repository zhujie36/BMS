<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="Borrow.aspx.cs" Inherits="Reader.Borrow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="reader"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="book ID"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Amount"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="sumbit" OnClick="Button1_Click" CssClass="btn btn-primary" />
    &nbsp;
    <asp:Button ID="Button2" runat="server" Text="cancel" CssClass="btn btn-default" />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
</asp:Content>
