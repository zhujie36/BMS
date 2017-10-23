<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="bookBorrow.aspx.cs" Inherits="Reader.bookBorrow1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
<div>
        <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" Text="ID" Width="85px" Font-Bold="True" ForeColor="#333333" Font-Size="Medium" Height="30px"></asp:Label>
         <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True"></asp:TextBox>         
            <br />
            <asp:Label ID="Label2" runat="server" Text="name" Width="85px" Font-Bold="True" Height="30px"></asp:Label><asp:TextBox ID="TextBox2" runat="server" Font-Bold="True"></asp:TextBox>
         <br />
            <asp:Label ID="Label3" runat="server" Text="price" Width="85px" Font-Bold="True" Height="30px"></asp:Label><asp:TextBox ID="TextBox3" runat="server" Font-Bold="True"></asp:TextBox>
         <br />
            <asp:Label ID="Label4" runat="server" Text="category" Width="85px" Font-Bold="True" Height="30px"></asp:Label><asp:TextBox ID="TextBox4" runat="server" Font-Bold="True" ForeColor="Black"></asp:TextBox>
         <br />
            <asp:Label ID="Label5" runat="server" Text="press" Width="85px" Font-Bold="True" Height="30px"></asp:Label><asp:TextBox ID="TextBox5" runat="server" Font-Bold="True"></asp:TextBox>
            <br />
    <asp:Label ID="Label6" runat="server" Text="IsCanLend" Font-Bold="True" Height="32px" Width="85px"></asp:Label><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <div>
                <asp:Button ID="Button1" runat="server" Text="yes" OnClick="Button1_Click" CssClass="btn btn-primary"/>
                &nbsp;
                <asp:Button ID="Button2" runat="server" Text="no" OnClick="Button2_Click" CssClass="btn btn-default" />
            </div>        
    </div>
</asp:Content>
