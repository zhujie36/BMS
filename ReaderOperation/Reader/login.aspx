<%@ Page Title="" Language="C#" MasterPageFile="~/headstyle.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Reader.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headstyle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="account:" CssClass="col-sm-4 control-label"  Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <div>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Static" SetFocusOnError="True" ForeColor="Indigo" ErrorMessage="Please input your name."></asp:RequiredFieldValidator>
            </div>
            
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="passowrd:" CssClass="col-sm-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4">
            <asp:TextBox ID="TextBox2" runat="server" TextMode =" Password"  CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please input your password." ControlToValidate="TextBox2" Display="Static" SetFocusOnError="True" ForeColor="Indigo"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-4 col-sm-4">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                RepeatDirection ="Horizontal" CellPadding="20">
                <asp:ListItem Value = "1">Librarian</asp:ListItem>
                <asp:ListItem Value = "2">reader</asp:ListItem>
            </asp:RadioButtonList>
        </div>       
    </div>
    <div class="form-group" style="padding-left:20px">
        <div class="col-sm-offset-4 col-xs-offset-2">
            <div class="col-sm-1">
                <asp:Button ID="Button1" runat="server" Text="login" onclick="Button1_Click" CssClass="btn btn-primary" />
            </div>
        </div>
        <div class="col-sm-offset-5">
            <div class="col-sm-1">
                <asp:Button ID="Button2" runat="server" Text="register" onclick="Button2_Click" CssClass="btn btn-default" CausesValidation="False" />
            </div>
            
        </div>
    </div> 
</asp:Content>
