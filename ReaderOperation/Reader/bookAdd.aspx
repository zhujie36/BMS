<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="bookAdd.aspx.cs" Inherits="Reader.bookAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
        <div class="col-sm-offset-4 col-md-8">
            <h2>请输入新增图书信息</h2>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="name"  CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="price" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="category" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label5" runat="server" Text="press" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="TotalAmount" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>     
    <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="Location" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="image" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
        </div>
    </div>
    <div class="form-group">           
            <div class="col-sm-offset-4"  style="padding-left:20px">
                <div class="col-sm-1">
                    <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" CssClass="btn btn-primary" />
                </div>
            </div>
            <div class="col-sm-offset-5" style="padding-left:20px">
                <div class="col-sm-1">
                    <asp:Button ID="Button2" runat="server" Text="cancel" OnClick="Button2_Click" CssClass="btn btn-default" />
                </div>                
            </div>
    </div>

</asp:Content>
