<%@ Page Title="" Language="C#" MasterPageFile="~/headstyle.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Reader.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headstyle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    I have a bike:
        <input type="checkbox" name="vehicle" value="Bike" />
        <br />
        I have a car:
        <input type="checkbox" name="vehicle" value="Car" />
        <br />
        I have an airplane:
        <input type="checkbox" name="vehicle" value="Airplane" />
    <div id="qq">
        <asp:Label ID="Label1" runat="server" Text="" ClientIDMode="Static"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" ClientIDMode="Static"></asp:TextBox>
    </div>
    <asp:Button ID="Button1" runat="server" Text="Button" ClientIDMode="Static" CausesValidation="False" OnClick="Button1_Click" />

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#qq").hide();
            $("#Button1").click(function () {
                $(":checkbox").hide();
                $(":checkbox").each(function (j, item) {
                    alert($(this).val());
                    $("#Label1").append("<b>" + $(this).val() + "," + "</b>");
                   
                });
                $("#TextBox1").val($("#Label1").text());
            });
        });
    </script>
</asp:Content>
