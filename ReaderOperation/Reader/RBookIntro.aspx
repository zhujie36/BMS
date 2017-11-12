 <%@ Page Title="" Language="C#" MasterPageFile="~/RNacigator.Master" AutoEventWireup="true" CodeBehind="RBookIntro.aspx.cs" Inherits="Reader.RBookIntro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:20px 0" class="text-center">
        <h1>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </h1>
    </div>
    <div class="row">
        <div class="col-sm-4 text-right" style="padding-right:15px;">
            <asp:Image ID="Image1" runat="server" Width="150px" Height="210px" CssClass="img-thumbnail"/>
        </div>
        <div class="col-sm-6">
            <table class="" style="font-size:large; width:100%; line-height:36px;">
                <tr>
                    <td class="col-sm-4">
                        Author:
                    </td>
                    <td class="col-sm-8">
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Price:
                    </td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Time of Publication:
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Press:
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Total Number:
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Loan Number:
                    </td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Is can lent:
                    </td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Location:
                    </td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div style="margin-top:20px;" class="text-center">
        <asp:Button ID="Button1" runat="server" Text="return" CssClass="btn btn-default" OnClick="Button1_Click" />
    </div>
</asp:Content>
