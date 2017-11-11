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
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1" ViewStateMode="Inherit" ForeColor="Indigo"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="book ID" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TabIndex="2"></asp:TextBox>
        </div>
        <div class="col-sm-1" style="vertical-align:middle">
            <asp:Button ID="Button3" runat="server" Text="again" CausesValidation="False" OnClick="Button3_Click1" UseSubmitBehavior="False" />
        </div>
        <div class="col-sm-3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please input the book ID." ForeColor="Indigo" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Panel ID="Panel1" runat="server">
            <asp:Label ID="Label3" runat="server" Text="book ID" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
            <div class="col-sm-4 col-md-4">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TabIndex="3"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please input the book ID." ForeColor="Indigo" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
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
