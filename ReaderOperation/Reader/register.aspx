<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Reader.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
        <div class="text-center">
            <h2>Please input student information.</h2>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label5" runat="server" Text="stu_id：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Please input student's ID" ></asp:TextBox>
        </div>
        <div class="col-sm-4" >
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ForeColor="Indigo" ErrorMessage="Please input the reader name." Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="please input right student's ID!" Display="Dynamic" ForeColor="Indigo" ControlToValidate="TextBox3" ValidationExpression="[0-9]{11}" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="name：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="name containing 2~50 characters or numbers" ></asp:TextBox>
        </div>
        <div class="col-sm-4" aria-atomic="True">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="Indigo" ErrorMessage="Please input the reader name." Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please input student's name,containing 2~50 characters" Display="Dynamic" ControlToValidate="TextBox1" ValidationExpression="[a-zA-Z0-9]{2,50}" ForeColor="Indigo" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Set password：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password" placeholder="password containing 6~10 characters or numbers" ></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please input the password." ForeColor="Indigo" ControlToValidate="TextBox2" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="password containing 6~10 characters or numbers" ControlToValidate="TextBox2" Display="Dynamic" SetFocusOnError="True" ValidationExpression="[a-zA-Z0-9]{6,10}" ForeColor="Indigo" ></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="Input the password again：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" TextMode="Password" placeholder="input password again"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please input the password." ForeColor="Indigo" Display="Dynamic" ControlToValidate="TextBox6" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="The two passwords are differ." ControlToValidate="TextBox6" ControlToCompare="TextBox2" ForeColor="Indigo" Display="Dynamic" SetFocusOnError="True"></asp:CompareValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="Reader sex：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
               <asp:ListItem Value="0">male</asp:ListItem>
               <asp:ListItem Value="1">female</asp:ListItem>
               <asp:ListItem Value="2">unsure</asp:ListItem>
           </asp:DropDownList>
        </div>
    </div>
    
    <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="Phone number：" CssClass="ccol-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="please input phone number"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox4" ForeColor="Indigo" Display="Dynamic" ErrorMessage="The format of the phone number is incorrect." ValidationExpression="^1[34578]\d{9}$"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="E-mail：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
           <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"  placeholder="Please input email"></asp:TextBox><br/>
        </div>
        <div class="col-sm-4">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="The format of the E-mail is incorrect." ControlToValidate="TextBox5" Display="Dynamic" SetFocusOnError="True" ValidationExpression="^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label8" runat="server" Text="guarantee deposit" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-2 col-md-2">
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                <asp:ListItem Value="0">no</asp:ListItem>
                <asp:ListItem Value="1">yes</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-4 col-sm-8">
            <asp:Button ID="Button2" runat="server" Text="submit" onclick="Button2_Click" CssClass="btn btn-primary" UseSubmitBehavior="False" />
            &nbsp;
            <asp:Button ID="Button1" runat="server" Text="cancel" OnClick="Button1_Click" CssClass="btn btn-default" CausesValidation="False" UseSubmitBehavior="False" />
        </div>
    </div> 




</asp:Content>
