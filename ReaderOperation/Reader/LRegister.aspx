<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="LRegister.aspx.cs" Inherits="Reader.LRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="form-group">
        <div class="col-sm-offset-4 col-md-8">
            <h2>请输入您的个人信息</h2>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="name" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="password" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="aggin input" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox> 
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-4 col-sm-4 col-md-4">
            <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" CssClass="btn btn-primary" />
            &nbsp;
            <asp:Button ID="Button2" runat="server" Text="cancel" OnClick="Button2_Click" CssClass="btn btn-default" />
        </div>
    </div>

</asp:Content>
