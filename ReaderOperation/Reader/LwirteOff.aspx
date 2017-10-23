<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="LwirteOff.aspx.cs" Inherits="Reader.LwirteOff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h3  style="text-align:center; padding-top:40px;">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </h3>
        <div class="row" style="margin-top:60px">
            <div class="col-sm-6 text-right">
                <asp:Button ID="Button1" runat="server" Text="yes" CssClass="btn btn-primary" />
            </div>
            <div class="col-sm-6">
                <asp:Button ID="Button2" runat="server" Text="no" CssClass="btn btn-default" />
            </div>
            
        </div>
    </div>
</asp:Content>
