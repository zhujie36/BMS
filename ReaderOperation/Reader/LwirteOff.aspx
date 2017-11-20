<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="LwirteOff.aspx.cs" Inherits="Reader.LwirteOff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
    body {
    background-image:url(images/shu5.png);
    background-attachment:fixed;
    background-position:right bottom;
    background-repeat:no-repeat;
    background-size:350px 370px;
    }
</style>
    <div>
        <h3  style="text-align:center; padding-top:40px;">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </h3>
        <div class="row" style="margin-top:60px">
            <div class="col-sm-6 text-right">
                <asp:Button ID="Button1" runat="server" Text="yes" CssClass="btn btn-primary" OnClick="Button1_Click" />
            </div>
            <div class="col-sm-6">
                <asp:Button ID="Button2" runat="server" Text="no" CssClass="btn btn-default" OnClick="Button2_Click" />
            </div>
            
        </div>
    </div>
</asp:Content>
