<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="bookID.aspx.cs" Inherits="Reader.bookID" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group" style="padding-top:30px">
        <div class="text-center">
            <h2>This is bookID list</h2>
        </div>
    </div>
    <div class="form-group text-center" style="font-size:large">
        <asp:Repeater ID="LBook" runat="server">
            <ItemTemplate>
                <div>
                    <%#Eval("book_id") %>
                </div>               
            </ItemTemplate>
        </asp:Repeater>
        </div>
    <div class="form-group text-center">
        <asp:Button ID="Button1" runat="server" Text="return" CssClass="btn btn-default" OnClick="Button1_Click" />
    </div>
</asp:Content>
