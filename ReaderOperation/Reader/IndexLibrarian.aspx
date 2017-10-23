<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="IndexLibrarian.aspx.cs" Inherits="Reader.IndexLibrarian" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div style="text-align:center; width:100%">
        <asp:ImageButton ID="ImageButton4" runat="server" OnClick="ImageButton1_Click" ImageUrl="~/images/1.jpg"/><br />
    <asp:Label ID="Label4" runat="server" Text="图书添加"></asp:Label>
    <br /><br />
        <asp:ImageButton ID="ImageButton9" runat="server" />
        <br />
        <asp:Label ID="Label9" runat="server" Text="图书删除"></asp:Label>
    <br /><br />
    <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/2.jpg" OnClick="ImageButton2_Click" /><br />
    <asp:Label ID="Label5" runat="server" Text="图书查改"></asp:Label>
    <br /><br />
    <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/images/10.jpg" OnClick="ImageButton3_Click" /><br />
    <asp:Label ID="Label6" runat="server" Text="个人信息修改"></asp:Label><br /><br />

        <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/images/4.jpg" OnClick="ImageButton1_Click1"/><br />
        <asp:Label ID="Label1" runat="server" Text="处理借阅"></asp:Label>
        <br /><br />
        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/3.jpg" OnClick="ImageButton2_Click1" /><br />
        <asp:Label ID="Label2" runat="server" Text="增加新的管理员"></asp:Label>
        <br /><br />
        <asp:ImageButton ID="ImageButton3" runat="server"  ImageUrl="~/images/6.jpg" OnClick="ImageButton3_Click1"/><br />
        <asp:Label ID="Label3" runat="server" Text="处理还书"></asp:Label>
        <br /><br />
        <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/images/7.jpg" OnClick="ImageButton7_Click" />
        <br />
        <asp:Label ID="Label7" runat="server" Text="注销读者"></asp:Label>
        <br /><br />
        <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/images/13.jpg" OnClick="ImageButton8_Click"/>
        <br />
        <asp:Panel ID="Panel1" runat="server">
            <p>Are you sure to write off?</p>
            <asp:Button ID="Button1" runat="server" Text="yes" OnClick="Button1_Click" />
            &nbsp;
            <asp:Button ID="Button2" runat="server" Text="no" />
        </asp:Panel>
        <asp:Label ID="Label8" runat="server" Text="注销"></asp:Label>
    </div>
</asp:Content>
