<%@ Page Title="" Language="C#" MasterPageFile="~/RNacigator.Master" AutoEventWireup="true" CodeBehind="Redit.aspx.cs" Inherits="Reader.Redit" %>
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
    <div class="form-group">
        <div class="col-sm-offset-4 col-md-8">
            <h2>Please modify your information.</h2>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Your stu_id：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="Your name：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
           <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ></asp:TextBox>
        </div>
        <div class="col-sm-4" aria-atomic="True">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1" ForeColor="Indigo" ErrorMessage="Please input the reader name." Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please input student's name,containing 2~50 characters" Display="Dynamic" ControlToValidate="TextBox1" ValidationExpression="[a-zA-Z0-9]{2,50}" ForeColor="Indigo" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Your sex：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                <asp:ListItem Value="1">male</asp:ListItem>
                <asp:ListItem Value="0">female</asp:ListItem>
                <asp:ListItem Value="2">unsure</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="Set the password：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:Button ID="Button3" runat="server" Text="modify" OnClick="Button3_Click" CssClass="btn btn-default" CausesValidation="False" />
           <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Visible="False" TextMode="Password"  placeholder="password containing 6~10 characters or numbers"  ></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please input the password." ForeColor="Indigo" ControlToValidate="TextBox2" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="password containing 6~10 characters or numbers" ControlToValidate="TextBox2" Display="Dynamic" SetFocusOnError="True" ValidationExpression="[a-zA-Z0-9]{6,10}" ForeColor="Indigo" ></asp:RegularExpressionValidator>
        </div>
    </div>
    <asp:Panel ID="Panel1" runat="server" Visible="False">
    <div class="form-group">
        <asp:Label ID="Label8" runat="server" Text="input again：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
           <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" TextMode="Password"  placeholder="input password again" ></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox7" ForeColor="Indigo" ErrorMessage="Password can not be empty." Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="two input is differnet!" ControlToCompare="TextBox2" ControlToValidate="TextBox7" Display="Dynamic" ForeColor="Indigo" SetFocusOnError="True"></asp:CompareValidator>
        </div>
    </div>
    </asp:Panel>
    <div class="form-group">
         <asp:Label ID="Label6" runat="server" Text="phone number：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
           <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ControlToValidate="TextBox4" ForeColor="Indigo" ErrorMessage="Phone number can not be empty."></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox4" ForeColor="Indigo" Display="Dynamic" ErrorMessage="The format of the phone number is incorrect." ValidationExpression="^1[34578]\d{9}$"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="E-mail：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
           <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please input the address." ForeColor="Indigo" ControlToValidate="TextBox5" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="The format of the E-mail is incorrect." ControlToValidate="TextBox5" Display="Dynamic" SetFocusOnError="True" ValidationExpression="^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label5" runat="server" Text="fine：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
           <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
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
