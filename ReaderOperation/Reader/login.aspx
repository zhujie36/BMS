<%@ Page Title="" Language="C#" MasterPageFile="~/headstyle.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Reader.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headstyle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="name:" CssClass="col-sm-4 control-label"  Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <div>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
           <div>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox1" Display="Dynamic" Font-Size="Large" ValidationExpression="11"></asp:RegularExpressionValidator>
            </div>
            
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="passowrd:" CssClass="col-sm-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4">
            <asp:TextBox ID="TextBox2" runat="server" TextMode =" Password"  CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox2" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox2" Display="Dynamic"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-4 col-sm-4">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                RepeatDirection ="Horizontal" CellPadding="20" >
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
