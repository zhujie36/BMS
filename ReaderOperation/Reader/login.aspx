<%@ Page Title="" Language="C#" MasterPageFile="~/headstyle.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Reader.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headstyle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
账号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        <br/>
        密码：<asp:TextBox ID="TextBox2" runat="server" TextMode =" Password"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
        <br/>
        <div class="left">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            RepeatDirection ="Horizontal">
            <asp:ListItem Value = "1">管理员</asp:ListItem>
                <asp:ListItem Value = "2">读者</asp:ListItem>
            </asp:RadioButtonList>
        </div>
            
              <asp:Button ID="Button1" runat="server" Text="登录" onclick="Button1_Click" style="height: 21px" />
    &nbsp;   
    
    <asp:Button ID="Button2" runat="server" Text="注册" onclick="Button2_Click" style="height: 21px" />
    
    <br />
    </div>
        
    
</asp:Content>
