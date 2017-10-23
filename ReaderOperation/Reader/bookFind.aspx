<%@ Page Title="" Language="C#" MasterPageFile="~/RNacigator.Master" AutoEventWireup="true" CodeBehind="bookFind.aspx.cs" Inherits="Reader.bookFind" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="form-group">
        <div style="width:100%; text-align:center">
            <h2>搜索书籍</h2>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="category" CssClass="col-sm-2 col-md-2 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-3">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <asp:Label ID="Label2" runat="server" Text="name" CssClass="col-sm-2 col-md-2 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-3">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-1">
            <asp:Button ID="Button2" runat="server" Text="搜索" OnClick="Button2_Click" CssClass="btn btn-primary" />
        </div>
        <div class="col-sm-1">
            <asp:Button ID="Button1" runat="server" Text="返回" OnClick="Button1_Click" CssClass="btn btn-default" />
        </div>
    </div>
    <table class="table table-hover table-responsive table-striped text-center" style="margin-top:40px">
        <thead>
            <tr>
                <th  class="text-center">
                  Picture
                </th>
                <th class="text-center">
                    Name
                </th>
                <th  class="text-center">
                    Category
                </th>
                <th  class="text-center">
                    Press
                </th>
                <th class="text-center">
                    Total Amount
                </th>
                <th class="text-center">
                    Loan Amount
                </th>
             </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="LBook" runat="server">
                <ItemTemplate>
                    <tr>
                        <td>
                          <img width="120" height="140" src='<%#Eval("Pic") %>' alt="未上传图片" class="img-rounded"/>
                        </td>
                    
                        <td>
                            <%#Eval("name") %>
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
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>

</asp:Content>
