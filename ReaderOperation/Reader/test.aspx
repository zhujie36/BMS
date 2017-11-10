<%@ Page Title="" Language="C#" MasterPageFile="~/headstyle.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Reader.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headstyle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  1<asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Email"></asp:TextBox><br />

    2<asp:TextBox ID="TextBox2" runat="server" TabIndex="1"></asp:TextBox><br />
    3<asp:TextBox ID="TextBox3" runat="server" TabIndex="2"></asp:TextBox><br />
    4<asp:TextBox ID="TextBox4" runat="server" TabIndex="3"></asp:TextBox><br />
    <asp:Button ID="Button2" runat="server" Text="Button" TabIndex="4" OnClick="Button2_Click" />
    <asp:Button ID="Button1" runat="server" Text="Button" TabIndex="4" OnClick="Button1_Click1"/>
    
</asp:Content>
