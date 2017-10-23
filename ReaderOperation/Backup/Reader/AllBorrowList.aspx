<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllBorrowList.aspx.cs" Inherits="Reader.AllBorrowList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>图书管理系统</title>
</head>
<body>
    <h1>当前用户所有借阅图书展示:</h1><br/><br/>
    <form id="form1" runat="server">
    <div>
       <table>
        <tr>
            <td>借阅编号&nbsp;&nbsp;</td>
            <td>读者编号&nbsp;&nbsp;</td>
            <td>书籍编号&nbsp;&nbsp;</td>
            <td>书名&nbsp;&nbsp;</td>
            <td>借阅起始时间&nbsp;&nbsp;</td>
            <td>操作</td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("BorrowID") %></td>
                    <td><%#Eval("ReaderID") %></td>
                    <td><%#Eval("BookID") %></td>
                    <td><%#Eval("BookName") %></td>
                    <td><%#Eval("StartTime") %></td>
                    
                </tr>
            </ItemTemplate>
        </asp:Repeater>
       </table>
    </div>
    </form>
</body>
</html>
