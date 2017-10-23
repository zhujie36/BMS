<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="AllBorrowList.aspx.cs" Inherits="Reader.AllBorrowList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
        <asp:Label ID="Label1" runat="server" Text="reader："></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;<asp:Button ID="Button4" runat="server" Text="ok" OnClick="Button4_Click" />
    <table class="table table-hover table-responsive table-striped">
        <tr>
            <td>Book&nbsp;name(书名)&nbsp;&nbsp;</td>
            <td>Book&nbsp;Amount&nbsp;&nbsp;</td>
            <td>Borrow&nbsp;time(借阅起始时间)&nbsp;&nbsp;</td>
            <td>Operation(操作)</td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
              
                    <td><%#Eval("BookName") %></td>
                    <td><%#Eval("Num") %></td>
                    <td><%#Eval("StartTime") %></td>
                    <td>
                        <a href="Detail.aspx?BorrowID=<%#Eval("BorrowID") %>&BookID=<%#Eval("BookID") %>">Detail(详细)</a>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
       </table>
    </div>
    <div style="text-align:center; margin-top:15px;">
        <asp:Button ID="Button1" runat="server" Text="返回" OnClick="Button1_Click" />
    </div>
</asp:Content>
