<%@ Page Title="" Language="C#" MasterPageFile="~/RNacigator.Master" AutoEventWireup="true" CodeBehind="Redit.aspx.cs" Inherits="Reader.Redit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="form-group">
        <div class="col-sm-offset-4 col-md-8">
            <h2>Please modify your information.</h2>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Your ID：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="Your stu_id：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
           <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="Set the password：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
           <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" ></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ForeColor="Indigo" ErrorMessage="Password can not be empty."></asp:RequiredFieldValidator>
        </div>
    </div>  
    <div class="form-group">
         <asp:Label ID="Label6" runat="server" Text="phone number：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
           <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ControlToValidate="TextBox4" ForeColor="Indigo" ErrorMessage="Phone number can not be empty."></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Password format is incorrect." ControlToValidate="TextBox4" ForeColor="Indigo" Display="Dynamic" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="famliy address：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
           <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please input the address." ForeColor="Indigo" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group" style="padding-left:20px">     
        <div class="col-sm-offset-4 col-md-offset-4">
            <div class="col-sm-2">
                <asp:Button ID="Button2" runat="server" Text="submit" onclick="Button2_Click" CssClass="btn btn-primary" />
            </div>
            <div class="col-sm-2">
                <asp:Button ID="Button1" runat="server" Text="return" OnClick="Button1_Click" CssClass="btn btn-default" CausesValidation="False" />
            </div>
        </div>
    </div>
</asp:Content>
