﻿<%@ Page Title="" Language="C#" MasterPageFile="~/RNacigator.Master" AutoEventWireup="true" CodeBehind="RBorrowlist.aspx.cs" Inherits="Reader.RBorrowlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
    body {
    background-image:url(images/shu5.png);
    background-attachment:fixed;
    background-position:right bottom;
    background-repeat:no-repeat;
    background-size:350px 370px;
    }
</style>
    <div class="form-group" style="padding-top:20px;">
        <div class="col-sm-6 col-sm-offset-4">
            <h2>list of the book borrowed</h2>
        </div>
        <div class="col-sm-2">
            <table class="table">
            <tr class="danger">
                <td style="line-height:10px;">
                    not returned
                </td> 
            </tr>
            <tr class="success">
                <td style="line-height:10px;">
                    has paid fine
                </td> 
            </tr>
            <tr>
                <td style="line-height:10px;background-color:white">
                    retruned
                </td> 
            </tr>
        </table>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-12 text-center ">
            <a ID="selectNot" class="btn btn-default">not returned</a>
            &nbsp;
            <a ID="selectAll" class="btn btn-default">ALL</a>
        </div>
    </div>
    <div class="form-group">
    <table class="table table-hover table-responsive text-center">
        <thead>
            <tr>
                <th class="money"></th>
                <th class="text-center">Book&nbsp;ID&nbsp;&nbsp;</th>
                <th class="text-center">Book&nbsp;name&nbsp;&nbsp;</th>
                <th class="text-center">Borrow&nbsp;time&nbsp;&nbsp;</th>
            </tr>
        </thead>
        <tbody>            
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>    
                        <tr class="white">
                            <td class="money" id="qq">
                                <%#Eval("Money") %>
                            </td>
                            <td><%#Eval("bookID") %></td>
                            <td><%#Eval("BookName") %></td>
                            <td><%#Eval("startTime") %></td>
                            <td class="loan"><%#Eval("ret") %></td>
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
            $(".loan").hide();
            $(".white").each(function () {
                if ($(this).children(".loan").length != 0) {
                    if ($(this).children(".loan").text().trim() != "1") {
                        $(this).addClass("danger");
                        //alert($(this).children(".loan").text().trim());
                    }
                }

            })
            $(".white").each(function (j, item) {
                var t = item.firstElementChild;
//alert(t.textContent);
                if (t.textContent.toString().trim() != "0" && t.textContent.toString().trim() != "") {
                    
                    $(this).addClass("success");
                }
            });
            $("#selectAll").click(function () {
                $(".white").each(function (j, item) {
                    $(this).show();
                });
            });
            $("#selectNot").click(function () {
                $(".white").each(function (j, item) {
                    if ($(this).children(".loan").length != 0) {
                        if ($(this).children(".loan").text().trim() == "1") {
                            $(this).hide();
                        }
                    }
                });
            });
        });
    </script>
</asp:Content>
