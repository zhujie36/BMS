﻿<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="payFine.aspx.cs" Inherits="Reader.payFine" %>
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
    <div class="form-group" style="margin-top:100px">
        <asp:Label ID="Label1" runat="server" Text="stu_id:" CssClass="control-label col-sm-4" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Font-Bold="True" Font-Size="Large"></asp:TextBox>
        </div>
        <div class="col-sm-4" style="padding-left:20px">
            <asp:Button ID="Button3" runat="server" Text="ok" OnClick="Button3_Click" CssClass="btn btn-default glyphicon-calendar" />
        </div>
    </div>
    <div class="form-group text-center">
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ForeColor="Indigo" ErrorMessage="Please input the reader name." Display="Dynamic" Font-Size="Large" Font-Bold="True"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="please input right student's ID!" Display="Dynamic" ForeColor="Indigo" ControlToValidate="TextBox1" ValidationExpression="[0-9]{11}" SetFocusOnError="True" Font-Bold="True" Font-Size="Large"></asp:RegularExpressionValidator>
    </div>
    <asp:Panel ID="Panel1" runat="server" style="margin-top:30px">
        <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="fine:" CssClass="control-label col-sm-4" Font-Bold="True" Font-Size="Large"></asp:Label>
            <div class="col-sm-4">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Font-Bold="True" Font-Size="Large" Enabled="False"></asp:TextBox>
            </div>
        </div> 
        <div class="form-group" style="margin-top:50px">
            <div class=" col-sm-offset-4">
                <div class="col-sm-2 text-center">
                    <asp:Button ID="Button1" runat="server" Text="yes" CssClass="btn btn-primary" OnClick="Button1_Click" />
                </div>
                <div class="col-sm-2 text-center">
                    <asp:Button ID="Button2" runat="server" Text="no" CssClass="btn btn-default" OnClick="Button2_Click" />
                </div>
            </div>            
        </div>
    </asp:Panel>
    <div class="form-group">
        <asp:Panel ID="Panel2" runat="server">
            <div class="alert alert-warning col-sm-offset-4 col-sm-4">
	            <a href="#" class="close" data-dismiss="alert">
		            &times;
	            </a>
                <span>
                    <asp:Label ID="Label2" runat="server" Text="" CssClass="control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
                </span>
            </div>
        </asp:Panel>
    </div>
</asp:Content>
