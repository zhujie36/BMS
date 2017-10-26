<%@ Page Title="" Language="C#" MasterPageFile="~/headstyle.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Reader.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headstyle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <p id="qq" onclick="dian1()">zhujie</p>
    </div>
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <asp:Label ID="Label1" runat="server" Text="dasdas"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="deleteInfo" runat="server" Text="删除" CssClass="btn_2k3" OnClick="deleteInfo_Click" />
    <script type="text/javascript">
        function dian1()
        {
            var aa = document.getElementById("qq");
            aa.innerText = "hi,qq";
        }
        function dian() {
            var aa = document.getElementById("Label1");
            aa.innerText = "hi,qq";
        }

        $(document).ready(function () {
            $("#deleteInfo").bind("click", function () {
                return confirm('确定删除吗？');
            });
        });
    </script>
</asp:Content>
