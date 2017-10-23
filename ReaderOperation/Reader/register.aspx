<%@ Page Title="" Language="C#" MasterPageFile="~/headstyle.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Reader.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headstyle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
        <div class="col-sm-offset-4 col-md-8">
            <h2>请输入您的个人信息</h2>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="读者姓名：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="设置密码：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password" ></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="再次输入密码：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="读者性别：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
               <asp:ListItem Value="0">男</asp:ListItem>
               <asp:ListItem Value="1">女</asp:ListItem>
               <asp:ListItem Value="2">未知</asp:ListItem>
           </asp:DropDownList>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label5" runat="server" Text="身份证号：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="联系电话：" CssClass="ccol-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="家庭地址：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
           <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-4 col-sm-8">
            <asp:Button ID="Button2" runat="server" Text="submit" onclick="Button2_Click" CssClass="btn btn-primary" />
            &nbsp;
            <asp:Button ID="Button1" runat="server" Text="cancel" OnClick="Button1_Click" CssClass="btn btn-default" />
        </div>
    </div> 
    

</asp:Content>
