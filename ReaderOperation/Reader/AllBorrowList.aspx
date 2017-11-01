<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="AllBorrowList.aspx.cs" Inherits="Reader.AllBorrowList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
        <div style="width:100%; text-align:center">
            <h2>Book Return</h2>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-3">
            <asp:Label ID="Label1" runat="server" Text="reader：" CssClass="col-sm-1 control-label" Font-Bold="True" ></asp:Label>
            <div class="col-sm-3">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>      
            <div class="col-sm-offset-1 col-sm-1">
                <asp:Button ID="Button4" runat="server" Text="ok" OnClick="Button4_Click" CssClass="btn btn-primary" />
            </div>
            <div class="col-sm-1">
                <asp:Button ID="Button3" runat="server" Text="cancel" OnClick="Button3_Click" CssClass="btn btn-default" />
            </div>
        </div>      
    </div>
    <div class="form-group">
    <table class="table table-hover table-responsive table-striped text-center">
        <thead>
            <tr>
                <th class="money"></th>
                <th class="text-center">Book&nbsp;name&nbsp;&nbsp;</th>
                <th class="text-center">Book&nbsp;Amount&nbsp;&nbsp;</th>
                <th class="text-center">Borrow&nbsp;time&nbsp;&nbsp;</th>
                <th class="text-center">Operation</th>
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
                            <td><%#Eval("Num") %></td>
                            <td><%#Eval("StartTime") %></td>
                            <td>
                                <a href="Detail.aspx?BorrowID=<%#Eval("BorrowID") %>&BookID=<%#Eval("BookID") %>">Detail</a>
                            </td>
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
                    $(this).addClass("warning");
                }
            });
            
        });
    </script>
</asp:Content>
