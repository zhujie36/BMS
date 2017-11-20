<%@ Page Title="" Language="C#" MasterPageFile="~/headstyle.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Reader.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headstyle" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 8.33333333%;
            left: 64px;
            top: -3px;
            padding-left: 15px;
            padding-right: 15px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        body{
            background-image:url(images/timg.jpg);
            background-repeat:no-repeat;
            background-size:1500px  650px;
        }
        .auto-style4 {
            margin-bottom: 15px;
            width: 30%;
            height: 27px;
        }
    </style>
   
    <div class="auto-style4" style=" padding-left:50px; font-family: 'MV Boli'; font-size: large; font-weight: bold; font-style: normal; font-variant: normal; color: #008000;">
         <asp:Label ID="Label1" runat="server" Text="Welcome to Sculpting-in-time Library!This library will help you find your favourite book.Have a good time!"></asp:Label>
    </div >
    <div class="form-group" style="padding-left:400px">
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="account:" CssClass="col-sm-4 control-label"  Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4" >
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="student' ID / administrator's name"></asp:TextBox>
        </div>
        <div class="col-sm-4" >
            <div>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" SetFocusOnError="True" ForeColor="Indigo" ErrorMessage="Please input your name."></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  ControlToValidate="TextBox1" ErrorMessage="only can input numbers or charactors" Display="Dynamic"  ForeColor="Indigo" SetFocusOnError="True" ValidationExpression="[a-z0-9]{1,50}"></asp:RegularExpressionValidator>
            </div>
            
        </div>
    </div>
    
    <div class="form-group" style="padding-left:400px">
        <asp:Label ID="Label4" runat="server" Text="passowrd:" CssClass="col-sm-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4">
            <asp:TextBox ID="TextBox2" runat="server" TextMode =" Password"  CssClass="form-control"  placeholder="password containing 6~10 characters or numbers" ></asp:TextBox>
        </div>
        <div class="col-sm-4">
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please input the password." ForeColor="Indigo" ControlToValidate="TextBox2" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="password containing 6~10 characters or numbers" ControlToValidate="TextBox2" Display="Dynamic" SetFocusOnError="True" ValidationExpression="[a-z0-9]{6,10}" ForeColor="Indigo" ></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group" style="padding-left:400px">
        <div class="col-sm-offset-4 col-sm-4">
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                RepeatDirection ="Horizontal" CellPadding="20" CellSpacing="20" Width="276px">
                <asp:ListItem Value = "1">Librarian</asp:ListItem>
                <asp:ListItem Value = "2">Reader</asp:ListItem>
            </asp:RadioButtonList>
        </div>       
    </div>
    <br/>
    <div class="form-group" style="padding-left:400px">
        <div class="col-sm-offset-4 col-xs-offset-2">
            <div class="auto-style1">
                <asp:Button ID="Button1" runat="server" Text="login" onclick="Button1_Click" CssClass="btn btn-primary" />
            </div>
        </div> 
    </div> 
</asp:Content>
