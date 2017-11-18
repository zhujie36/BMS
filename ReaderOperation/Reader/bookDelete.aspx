<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="bookDelete.aspx.cs" Inherits="Reader.bookDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
        <div class="col-sm-offset-4 col-md-8">
            <h2>Please select books to delete</h2>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="ID" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
           <table class="table table-hover table-responsive text-center">
            <asp:Repeater ID="LBook" runat="server">
                <ItemTemplate>
                    <tr>
                        <td style="vertical-align:middle; padding:0 20px" class="check">
                            <input type="checkbox" name="vehicle" value='<%#Eval("book_id") %>' />
                        </td>
                        <td style="vertical-align:middle">
                            <%#Eval("book_id") %>
                        </td>
                        <td style="vertical-align:middle" class="loan">
                            <%#Eval("inLibrarain") %>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>  
        </div>
    </div>
    <div class="form-group">           
            <div class="col-sm-offset-4"  style="padding-left:20px">
                <div class="col-sm-1">
                    <asp:Button ID="sure" runat="server" Text="submit" OnClick="Button1_Click" CssClass="btn btn-primary" ClientIDMode="Static" />
                </div>
            </div>
            <div class="col-sm-offset-5" style="padding-left:20px">
                <div class="col-sm-1">
                    <asp:Button ID="Button2" runat="server" Text="cancel" OnClick="Button2_Click" CssClass="btn btn-default" />
                </div>                
            </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-5 col-sm-3">
            <asp:Image ID="Image1" runat="server" Width="150px" Height="200px" CssClass="img-thumbnail" />
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="name"  CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="price" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="year of publication" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="writerLabel" runat="server" Text="author" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="writeTextBox" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label5" runat="server" Text="press" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="TotalAmount" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>  
    <div class="form-group">
        <asp:Label ID="Label8" runat="server" Text="loan Amount" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label9" runat="server" Text="Location" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div id="qq">
        <asp:Label ID="Label6" runat="server" Text="" ClientIDMode="Static"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" ClientIDMode="Static"></asp:TextBox>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".loan").hide();
            $("#TextBox1").hide();
            $("tr").each(function () {
                if ($(this).children(".loan").length != 0) {
                    if ($(this).children(".loan").text().trim() == "0") {
                        $(this).addClass("warning");
                        $(this).children(".check").children("input").prop("disabled", true);
                    }
                }

            });
            $("#sure").click(function () {
                //alert("ok");
                $(":checkbox").each(function (j, item) {
                    if ($(this).is(':checked'))
                    {
                        //alert($(this).val());
                        $("#Label6").append("<b>" + $(this).val() + "," + "</b>");
                    }
                    

                });
                $("#TextBox1").val($("#Label6").text());
            });
        }); 
    </script>
</asp:Content>
