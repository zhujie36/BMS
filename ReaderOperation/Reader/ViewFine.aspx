<%@ Page Title="" Language="C#" MasterPageFile="~/headstyle.Master" AutoEventWireup="true" CodeBehind="ViewFine.aspx.cs" Inherits="Reader.ViewFine1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headstyle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <table>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Today's fine : "></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Yuan"></asp:Label>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="This week's fine :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Yuan"></asp:Label>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="This month's fine :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Yuan"></asp:Label>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="This year's fine : "></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Yuan"></asp:Label>
            </td>
        </tr>
    </table>



</asp:Content>
