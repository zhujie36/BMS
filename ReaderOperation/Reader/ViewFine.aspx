<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="ViewFine.aspx.cs" Inherits="Reader.ViewFine1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <table>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Today's earning : "></asp:Label>
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
                <asp:Label ID="Label4" runat="server" Text="This week's earning :"></asp:Label>
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
                <asp:Label ID="Label6" runat="server" Text="This month's earning :"></asp:Label>
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
                <asp:Label ID="Label8" runat="server" Text="This year's earning : "></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Yuan"></asp:Label>
            </td>
        </tr>
    </table>
    <br /><br /><br /><br /><br />
    <asp:Label ID="Label14" runat="server" Text="You can choose the start month and the end month,then the earnings during this time will be shown."></asp:Label><br /><br />


    <asp:Label ID="Label13" runat="server" Text="Please choose the begin date : "></asp:Label><br />

    <asp:Label ID="Label17" runat="server" Text="Year"></asp:Label>   
    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList> &nbsp;&nbsp;&nbsp;
   <asp:Label ID="Label18" runat="server" Text="Month"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server">
    
    </asp:DropDownList><br /><br />
    


    <asp:Label ID="Label15" runat="server" Text="Please choose the end date : "></asp:Label> <br />
    <asp:Label ID="Label19" runat="server" Text="Year"></asp:Label>
    <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>&nbsp;&nbsp;&nbsp;
   <asp:Label ID="Label20" runat="server" Text="Month"></asp:Label>
    <asp:DropDownList ID="DropDownList4" runat="server"></asp:DropDownList><br /><br /><br />
    
    
    
    
    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
    <asp:Label ID="Label16" runat="server" Text=""></asp:Label>

</asp:Content>
