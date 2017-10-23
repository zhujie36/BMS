<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="Reader.Detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<div>
        <table>
            <tr>
                <td>Borrow&nbsp;number(借阅编号)</td>
                <td><asp:Label ID="Label_BorrowID" runat="server" Text="Label"></asp:Label></td>
                <td></td>
            </tr>
            <tr>
                <td>Reader(读者)</td>
                <td><asp:Label ID="Label_ReaderID" runat="server" Text="Label"></asp:Label></td>
                <td></td>
            </tr>
            <tr>
                <td>Book&nbsp;number(书籍编号)</td>
                <td><asp:Label ID="Label_BookID" runat="server" Text="Label1"></asp:Label></td>
                <td></td>
            </tr>
            <tr>
                <td>Book&nbsp;name(书名)>/td>
                <td><asp:Label ID="Label_BookName" runat="server" Text="Label1"></asp:Label></td>
                <td></td>
            </tr>
            <tr>
                <td>Borrow&nbsp;time(借阅起始时间)</td>
                <td><asp:Label ID="LabelStartTime" runat="server" Text="Label1"></asp:Label></td>
                <td></td>
            </tr>
             <tr>
                <td>Borrow&nbsp;Number(借阅数量)</td>
                <td><asp:Label ID="number" runat="server" Text="Label1"></asp:Label></td>
                <td></td>
            </tr>
            </table>
    <asp:Panel ID="Panel1" runat="server">
        选择归还数量：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </asp:Panel> 
                    <a href="AllBorrowList.aspx">return&nbsp;list(返回列表)</a>
                    <asp:Button ID="Return" runat="server" Text="return the bok(归还该书)" OnClick="Return_Click"  CssClass="btn btn-primary" />
            
        
    </div>
    </asp:Content>
