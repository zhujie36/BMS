<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="Return.aspx.cs" Inherits="Reader.Return" %>
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
    <br/>
    <div class="form-group">
        <div class="col-sm-offset-4 col-md-8">
            <h2>please input reader and book</h2>
        </div>
    </div>
    <br/>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="book ID" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" ></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please input the book's ID!" ControlToValidate="TextBox2" ForeColor="Indigo" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="ID can only contains numbers" Display="Dynamic" ControlToValidate="TextBox2" ValidationExpression="[0-9]*" ForeColor="Indigo" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Panel ID="Panel2" runat="server">
            <div class="alert alert-warning col-sm-offset-4 col-sm-4">
	            <a href="#" class="close" data-dismiss="alert">
		            &times;
	            </a>
                <span>
                    <asp:Label ID="Label4" runat="server" Text="" CssClass="control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
                </span>
            </div>
        </asp:Panel>       
    </div>
    <div class="form-group">       
        <div class="col-sm-offset-4 col-sm-1" style="padding-left:20px">
            <asp:Button ID="Button1" runat="server" Text="sumbit" OnClick="Button1_Click" CssClass="btn btn-primary" />
        </div>
        <div class=" col-sm-1" style="padding-left:20px">
            <asp:Button ID="Button2" runat="server" Text="cancel" CssClass="btn btn-default" CausesValidation="False" OnClick="Button2_Click" UseSubmitBehavior="False" />
        </div>
    </div>

</asp:Content>
