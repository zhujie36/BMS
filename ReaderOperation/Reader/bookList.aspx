<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="bookList.aspx.cs" Inherits="Reader.bookList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="form-group">
        <div style="width:100%; text-align:center">
            <h2>搜索书籍</h2>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="category" CssClass="col-sm-1 control-label" Font-Bold="True" ></asp:Label>
        <div class="col-sm-2">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <asp:Label ID="Label2" runat="server" Text="name" CssClass="col-sm-1 control-label" Font-Bold="True" ></asp:Label>
        <div class="col-sm-2">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <asp:Label ID="Label3" runat="server" Text="ID" CssClass="col-sm-1 control-label" Font-Bold="True" ></asp:Label>
        <div class="col-sm-2">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-1">
            <asp:Button ID="Button2" runat="server" Text="搜索" OnClick="Button2_Click" CssClass="btn btn-primary" />
        </div>
        <div class="col-sm-1">
            <asp:Button ID="Button3" runat="server" Text="返回" OnClick="Button3_Click" CssClass="btn btn-default" />
        </div>
    </div>
    <table class="table table-hover table-responsive table-striped text-center">
        <thead>
        <tr>
            <th class="text-center">
                ID
            </th>
            <th class="text-center">
                Picture
            </th>
            <th class="text-center">
                Name
            </th>
            <th class="text-center">
                Price
            </th>
            <th class="text-center">
                Category
            </th>
            <th class="text-center">
                Press
            </th>
            <th class="text-center">
                Total Amount
            </th>
            <th class="text-center">
                Loan Amount
            </th>
            <th class="text-center">
                Loaction
            </th>
            <th class="text-center">
                Action
            </th>
        </tr>
        </thead>
        <tbody>
        <asp:Repeater ID="LBook" runat="server">
            <ItemTemplate>
                <tr>
                    <td>
                        <%#Eval("id") %>
                    </td>
                    <td>
                      <img width="120" height="140" src='<%#Eval("Pic") %>' alt="未上传图片" class="img-rounded"/>
                    </td>
                    <td>
                        <%#Eval("name") %>
                    </td>
                    <td>
                        <%#Eval("price") %>
                    </td>
                    <td>
                        <%#Eval("category") %>
                    </td>
                    <td>
                        <%#Eval("press") %>
                    </td>
                    <td>
                        <%#Eval("totalAmount") %>
                    </td>
                    <td>
                        <%#Eval("loanAmount") %>
                    </td>
                    <td>
                        <%#Eval("location") %>
                    </td>
                    <td>
                    <a href="bookUpdate.aspx?ID=<%#Eval("ID") %>">修改</a>
                    <a href="bookDelete.aspx?ID=<%#Eval("ID") %>">删除</a>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        </tbody>
    </table>
    <asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click" CssClass="btn btn-default"  />
</asp:Content>
