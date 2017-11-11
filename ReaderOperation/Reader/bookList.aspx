<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="bookList.aspx.cs" Inherits="Reader.bookList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="form-group">
        <div style="width:100%; text-align:center">
            <h2>Modify book information</h2>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Author" CssClass="col-sm-1 control-label" Font-Bold="True" ></asp:Label>
        <div class="col-sm-2">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <asp:Label ID="Label2" runat="server" Text="name" CssClass="col-sm-1 control-label" Font-Bold="True" ></asp:Label>
        <div class="col-sm-2">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <asp:Label ID="Label3" runat="server" Text="ISBN" CssClass="col-sm-1 control-label" Font-Bold="True" ></asp:Label>
        <div class="col-sm-2">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-1">
            <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" CssClass="btn btn-primary" />
        </div>
        <div class="col-sm-1">
            <asp:Button ID="Button3" runat="server" Text="Return" OnClick="Button3_Click" CssClass="btn btn-default" UseSubmitBehavior="False" />
        </div>
    </div>
    <table class="table table-hover table-responsive table-striped text-center">
        <thead>
        <tr>
            <th class="text-center">
                ISBN
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
                author
            </th>
            <th class="text-center">
                TimeOfPublication
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
                IS Can Lend
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
                    <td style="vertical-align:middle">
                        <%#Eval("ISBN") %>
                    </td>
                    <td style="vertical-align:middle">
                      <img width="120" height="140" src='<%#Eval("Pic") %>' alt="Didn't upload book picture." class="img-rounded"/>
                    </td>
                    <td style="vertical-align:middle">
                        <%#Eval("name") %>
                    </td>
                    <td style="vertical-align:middle">
                        <%#Eval("price") %>
                    </td>
                    <td style="vertical-align:middle">
                        <%#Eval("author") %>
                    </td>
                    <td style="vertical-align:middle">
                        <%#Eval("yearOfPublication") %>
                    </td>
                    <td style="vertical-align:middle">
                        <%#Eval("press") %>
                    </td>
                    <td style="vertical-align:middle">
                        <%#Eval("totalAmount") %>
                    </td>
                    <td style="vertical-align:middle">
                        <%#Eval("loanAmount") %>
                    </td>
                    <td style="vertical-align:middle">
                        <%#Eval("isCanLend") %>
                    </td>
                    <td style="vertical-align:middle">
                        <%#Eval("location") %>
                    </td>
                    <td style="vertical-align:middle">
                    <a href="bookUpdate.aspx?ID=<%#Eval("ISBN") %>">Modify</a>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
