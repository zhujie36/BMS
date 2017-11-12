<%@ Page Title="" Language="C#" MasterPageFile="~/RNacigator.Master" AutoEventWireup="true" CodeBehind="RBorrowlist.aspx.cs" Inherits="Reader.RBorrowlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
        <div style="width:100%; text-align:center">
            <h2>list of the book borrowed</h2>
        </div>
    </div>
    <div class="form-group">
    <table class="table table-hover table-responsive text-center">
        <thead>
            <tr>
                <th class="money"></th>
                <th class="text-center">Book&nbsp;name&nbsp;&nbsp;</th>
                <th class="text-center">Borrow&nbsp;time&nbsp;&nbsp;</th>
            </tr>
        </thead>
        <tbody>            
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>    
                        <tr>
                            <td class="money" id="qq">
                                <%#Eval("Money") %>
                            </td>
                            <td><%#Eval("BookName") %></td>
                            <td><%#Eval("StartTime") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                       
        </tbody>       
       </table>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            /*$(".money").each(function (j, item) {
                if (item.textContent.toString().trim() != "0")
                {
                    alert(item.textContent);
                    item.parentElement();
                }
            });*/
            $(".money").hide();
            $("tr").each(function (j, item) {
                var t = item.firstElementChild;
                if (t.textContent.toString().trim() != "0" && t.textContent.toString().trim() != "") {
                    //alert(t.textContent);
                    $(this).addClass("danger");
                }
            });
            
        });
    </script>
</asp:Content>
