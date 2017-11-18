<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="bookDeleteList.aspx.cs" Inherits="Reader.bookDeleteList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
        <div style="width:100%; text-align:center">
            <h2>Book Delete</h2>
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
            <asp:Button ID="Button2" runat="server" Text="search" OnClick="Button2_Click" CssClass="btn btn-primary" />
        </div>
        <div class="col-sm-1">
            <asp:Button ID="Button3" runat="server" Text="return" OnClick="Button3_Click" CssClass="btn btn-default" UseSubmitBehavior="False" />
        </div>
    </div>
    <div class="form-group text-right">
        <a ID="selectAll" class="btn btn-default">select ALL</a>
        <a ID="cancelAll" class="btn btn-default">cancel ALL</a>
    </div>
    <div class="form-group">
    <table class="table table-hover table-responsive table-striped text-center">
        <thead>
        <tr>
            <th></th>
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
                Author
            </th>
            <th class="text-center">
                Price
            </th>
            <th class="text-center">
                Year Of Publication
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
        </tr>
        </thead>
        <tbody>
        <asp:Repeater ID="LBook" runat="server">
            <ItemTemplate>
                <tr>
                    <td style="vertical-align:middle; padding:0 20px" class="check">
                        <input type="checkbox" name="vehicle" value='<%#Eval("ISBN") %>' />
                    </td>
                    <td style="vertical-align:middle">
                        <%#Eval("ISBN") %>
                    </td>
                    <td style="vertical-align:middle">
                      <img width="120" height="140" src='<%#Eval("Pic") %>' alt="Didn't upload the book picture." class="img-rounded"/>
                    </td>
                    <td style="vertical-align:middle">
                        <%#Eval("name") %>
                    </td>
                    <td style="vertical-align:middle">
                        <%#Eval("author") %>
                    </td>
                    <td style="vertical-align:middle">
                        <%#Eval("price") %>
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
                    <td style="vertical-align:middle" class="loan">
                        <%#Eval("loanAmount") %>
                    </td>
                    <td style="vertical-align:middle">
                        <%#Eval("location") %>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        </tbody>
    </table>  
    </div>
    <div id="qq">
        <asp:Label ID="Label4" runat="server" Text="" ClientIDMode="Static"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" ClientIDMode="Static"></asp:TextBox>
    </div>
    <div class="form-group text-right">
        <asp:Button ID="sure" runat="server" Text="sumit" ClientIDMode="Static" CausesValidation="False" OnClick="Button1_Click"  />
    </div>
    
    <script type="text/javascript">
        $(document).ready(function () {
            $("#qq").hide();
            $("tr").each(function () {
                if ($(this).children(".loan").length != 0)
                {
                    if ($(this).children(".loan").text().trim() != "0")
                    {
                        $(this).addClass("warning");
                        $(this).children(".check").children("input").prop("disabled", true);
                    }
                }
                
            })
            $("#selectAll").click(function () {
                $(":checkbox:enabled").each(function () {
                    if ($(this).prop("disabled") != true) {
                        $(this).attr("checked", true);
                    }
                })
                
            })
            $("#cancelAll").click(function () {
                $(":checkbox:enabled").each(function () {
                    if ($(this).prop("disabled") != true) {
                        $(this).attr("checked", false);
                    }
                })
            })
            $("#sure").click(function () {
                //alert("ok");
                $(":checkbox").each(function (j, item) {
                    if ($(this).is(':checked'))
                    {
                        //alert($(this).val());
                        $("#Label4").append("<b>" + $(this).val() + "," + "</b>");
                    }
                    

                });
                $("#TextBox4").val($("#Label4").text());
            });
        }); 
    </script>
</asp:Content>
