<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="bookAdd.aspx.cs" Inherits="Reader.bookAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<div >
            <asp:Label ID="Label2" runat="server" Text="name" Width="100px" Height="32px"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

            <br />
            <asp:Label ID="Label3" runat="server" Text="price" Width="100px" Height="32px"></asp:Label><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="category" Width="100px"  Height="32px"></asp:Label><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="press" Width="100px" Height="32px"></asp:Label><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
    <asp:Label ID="Label1" runat="server" Text="TotalAmount" Height="32px" Width="100px"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Location" Height="32px" Width="100px"></asp:Label><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label7" runat="server" Text="image" Height="32px" Width="74px"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <div >
                <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" CssClass="btn btn-primary" />
                &nbsp;
                <asp:Button ID="Button2" runat="server" Text="cancel" OnClick="Button2_Click" CssClass="btn btn-default" />
            </div>
            

    </div>

</asp:Content>
