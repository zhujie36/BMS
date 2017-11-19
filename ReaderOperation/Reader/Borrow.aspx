<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="Borrow.aspx.cs" Inherits="Reader.Borrow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
        <div class="col-sm-offset-4 col-md-8">
            <h2>please input reader and book</h2>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="stu_id" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TabIndex="1"></asp:TextBox>
        </div>
        <div class="col-sm-4" >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ForeColor="Indigo" ErrorMessage="Please input the reader name." Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="please input right student's ID!" Display="Dynamic" ForeColor="Indigo" ControlToValidate="TextBox1" ValidationExpression="[0-9]{11}" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="book ID" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TabIndex="2"></asp:TextBox>
        </div>
        <div class="col-sm-1" style="vertical-align:middle">
            <asp:Button ID="Button3" runat="server" Text="again" CausesValidation="False" OnClick="Button3_Click1" UseSubmitBehavior="False"  CssClass="btn btn-default" />
        </div>
        <div class="col-sm-3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please input the book's ID!" ControlToValidate="TextBox2" ForeColor="Indigo" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="ID can only contains numbers" Display="Dynamic" ControlToValidate="TextBox2" ValidationExpression="[0-9]*" ForeColor="Indigo" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <asp:Label ID="Label3" runat="server" Text="book ID" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
            <div class="col-sm-4 col-md-4">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TabIndex="3"></asp:TextBox>
            </div>
            <div class="col-sm-1">
                <asp:Button ID="Button4" runat="server" Text="cancel" CausesValidation="False" OnClick="Button4_Click" UseSubmitBehavior="False" CssClass="btn btn-default" />
            </div>
            <div class="col-sm-3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please input the book's ID!" ControlToValidate="TextBox3" ForeColor="Indigo" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="ID can only contains numbers" Display="Dynamic" ControlToValidate="TextBox3" ValidationExpression="[0-9]*" ForeColor="Indigo" SetFocusOnError="True"></asp:RegularExpressionValidator>
            </div>
        </asp:Panel>
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
            <asp:Button ID="Button1" runat="server" Text="sumbit" OnClick="Button1_Click" CssClass="btn btn-primary" TabIndex="4" UseSubmitBehavior="False" />
        </div>
        <div class=" col-sm-1" style="padding-left:20px">
            <asp:Button ID="Button2" runat="server" Text="cancel" CssClass="btn btn-default" CausesValidation="False" OnClick="Button2_Click" TabIndex="5" UseSubmitBehavior="False" />
        </div>
    </div>


    



</asp:Content>
