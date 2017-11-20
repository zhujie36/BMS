<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="bookID.aspx.cs" Inherits="Reader.bookID" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group" style="padding-top:30px">
        <div class="text-center">
            <h2>This is bookID list</h2>
        </div>
    </div>
    <div class="form-group text-center" style="font-size:large">
        <asp:Repeater ID="LBook" runat="server">
            <ItemTemplate>
                <div class="my col-sm-6 text-center">
                    <p class="you">
                        <%#Eval("book_id") %>
                    </p>
                    <img class="imag" src="test.aspx"></img>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        </div>
    <div class="form-group text-center" style="padding-top:20px">
        <asp:Button ID="Button1" runat="server" Text="return" CssClass="btn btn-default" OnClick="Button1_Click" />
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
           $("p").hide();
           $(".my").each(function (j, item) {
               //alert(item.children[0].textContent.trim());
               //alert(item.children[1].getAttribute("src"));
               var s = "test.aspx?s=" + item.children[0].textContent.trim();
               item.children[1].setAttribute("src", s);
           });
       });
  </script>
</asp:Content>
