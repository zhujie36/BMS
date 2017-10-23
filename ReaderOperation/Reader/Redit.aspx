<%@ Page Title="" Language="C#" MasterPageFile="~/RNacigator.Master" AutoEventWireup="true" CodeBehind="Redit.aspx.cs" Inherits="Reader.Redit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
           <!-- <table border="1" width="100%" height="100%">
	
		<td align="center" bgcolor="#000000" class="auto-style1">
        <td background="images/img1.jpg" width="100%" height="800">-->
    请修改您的个人信息<br/>
    <asp:Label ID="Label2" runat="server" Text="您的ID：" Height="32px" Width="100px"></asp:Label>
           <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
           <br/>
    <asp:Label ID="Label3" runat="server" Text="您的姓名：" Height="32px" Width="100px"></asp:Label><asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox><br/>
    <asp:Label ID="Label4" runat="server" Text="设置密码：" Height="32px" Width="100px"></asp:Label><asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox><br/>
    <asp:Label ID="Label5" runat="server" Text="身份证号：" Height="32px" Width="100px"></asp:Label><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br/>
    <asp:Label ID="Label6" runat="server" Text="联系电话：" Height="32px" Width="100px"></asp:Label><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br/>
    <asp:Label ID="Label7" runat="server" Text="家庭地址：" Height="32px" Width="100px"></asp:Label><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br/>
        <asp:Button ID="Button2" runat="server" Text="提交" onclick="Button2_Click" CssClass="btn btn-primary" />
    &nbsp;
    <asp:Button ID="Button1" runat="server" Text="返回" OnClick="Button1_Click" CssClass="btn btn-default" />
    </div>

</asp:Content>
