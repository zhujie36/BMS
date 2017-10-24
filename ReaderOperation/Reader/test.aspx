<%@ Page Title="" Language="C#" MasterPageFile="~/headstyle.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Reader.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headstyle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<!--
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
                        <td style="vertical-align:middle">
                          <img width="120" height="140" src='<%#Eval("Pic") %>' alt="未上传图片" class="img-rounded"/>
                        </td>
                    
                        <td style="vertical-align:middle">
                            <%#Eval("name") %>
                        </td>

                        <td style="vertical-align:middle">
                            <%#Eval("category") %>
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
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
-->
</asp:Content>
