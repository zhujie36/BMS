<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="Ledit.aspx.cs" Inherits="Reader.Ledit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
       <div>
           <!-- <table border="1" width="100%" height="100%">
	
		<td align="center" bgcolor="#000000" class="auto-style1">
        <td background="images/img1.jpg" width="100%" height="800">-->
           <asp:Label ID="Label1" runat="server" Text="请修改信息："></asp:Label><br />
           您的ID:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />
        您的姓名：<asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox><br />
        设置密码：<asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox><br />
           <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click"  CssClass="btn btn-primary" />
           &nbsp;
           <asp:Button ID="Button2" runat="server" Text="取消" OnClick="Button2_Click" CssClass="btn btn-default" />
    </div>

</asp:Content>
