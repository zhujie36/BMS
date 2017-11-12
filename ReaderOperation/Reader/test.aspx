<%@ Page Title="" Language="C#" MasterPageFile="~/headstyle.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Reader.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headstyle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="form-group">
      <asp:Label ID="Label1" runat="server" Text="name:" CssClass="col-sm-4 control-label"></asp:Label>
      <div class="col-sm-4">
          <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
      </div>
  </div>
  <div class="form-group">
      <asp:Label ID="Label2" runat="server" Text="password:" CssClass="col-sm-4 control-label"></asp:Label>
      <div class="col-sm-4">
          <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
      </div>
  </div>
    <div class="form-group text-center">
        <asp:Button ID="Button1" runat="server" Text="sumbit" OnClick="Button1_Click" CssClass="btn btn-default" />
    </div>
</asp:Content>
