<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="LRegister.aspx.cs" Inherits="Reader.LRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="form-group">
        <div class="col-sm-offset-4 col-md-8">
            <h2>Please input the information of the librarian you want to add.</h2>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="name" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="name containing 2~50 characters or numbers"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please input the name." ControlToValidate="TextBox2" ForeColor="Indigo" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please input student's name,containing 2~50 characters" Display="Dynamic" ControlToValidate="TextBox2" ValidationExpression="[a-z0-9]{2,50}" ForeColor="Indigo" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="password" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="password containing 6~10 characters or numbers" TextMode="Password"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please input the password." ControlToValidate="TextBox3" ForeColor="Indigo" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="password containing 6~10 characters or numbers" ControlToValidate="TextBox3" Display="Dynamic" SetFocusOnError="True" ValidationExpression="[a-z0-9]{6,10}" ForeColor="Indigo" ></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="again input" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="input password again" TextMode="Password"></asp:TextBox> 
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please input the passwor." ControlToValidate="TextBox4" ForeColor="Indigo" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="The two input password is inconsistent." ForeColor="Indigo" Display="Dynamic" ControlToValidate="TextBox4" ControlToCompare="TextBox3"></asp:CompareValidator>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-4 col-sm-4 col-md-4">
            <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" CssClass="btn btn-primary" />
            &nbsp;
            <asp:Button ID="Button2" runat="server" Text="cancel" OnClick="Button2_Click" CssClass="btn btn-default" CausesValidation="False" />
        </div>
    </div>

</asp:Content>
