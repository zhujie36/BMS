<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="writeOff.aspx.cs" Inherits="Reader.writeOff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="please input information about reader"></asp:Label><br />
    <asp:Label ID="Label2" runat="server" Text="name:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" CssClass="btn btn-primary" />
    &nbsp;
    <asp:Button ID="Button2" runat="server" Text="cancel" OnClick="Button2_Click" CssClass="btn btn-default" />
</asp:Content>
