<%@ Page Title="" Language="C#" MasterPageFile="~/headstyle.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Reader.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headstyle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[0-9]*$" ControlToValidate="TextBox1"></asp:RegularExpressionValidator>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click1" />
    <asp:Button ID="Button2" runat="server" Text="Button" CausesValidation="False" />
</asp:Content>
