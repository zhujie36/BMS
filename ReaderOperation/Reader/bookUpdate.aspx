﻿<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="bookUpdate.aspx.cs" Inherits="Reader.bookUpdate" %>
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
            <h2>Modify book information</h2>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="ISBN" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True"  CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="name"  CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ForeColor="Indigo" ErrorMessage="Please input the book's name."></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="price" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please input the book's price." ForeColor="Indigo" ControlToValidate="TextBox3" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="The book's price format is incorrect." ForeColor="Indigo" ValidationExpression="^[0-9]+(.[0-9]*)?$" ControlToValidate="TextBox3" Display="Dynamic"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="writerLabel" runat="server" Text="author" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="writeTextBox" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="writeTextBox" ForeColor="Indigo" ErrorMessage="Please input the book's author."></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="TimeOfPublication" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ForeColor="Indigo"  ErrorMessage="Please input the book's cateory." Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="please input right date,like 1996-03-01"  ControlToValidate="TextBox4" SetFocusOnError="True" Display="Dynamic" ForeColor="Indigo" ValidationExpression="[0-9]{4}(-[0-9]{1,2}){0,2}"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label5" runat="server" Text="press" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ForeColor="Indigo" ErrorMessage="Please input the book's press."></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="TotalAmount" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please input the book's total amount." ControlToValidate="TextBox6" ForeColor="Indigo" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="The total amount of the book is incorrect." ControlToValidate="TextBox6" Display="Dynamic" ForeColor="Indigo" Visible="True" EnableTheming="True" ValidationExpression="^[0-9]*[1-9][0-9]*$"></asp:RegularExpressionValidator>
        </div>
    </div>  
    <div class="form-group">
        <asp:Label ID="Label10" runat="server" Text="loan Amount" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7"  Display="Dynamic" runat="server" ErrorMessage="Plase input the loan amount." ControlToValidate="TextBox8" EnableTheming="True" SetFocusOnError="True" ForeColor="Indigo"></asp:RequiredFieldValidator>
            
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox8" Display="Dynamic" ErrorMessage="please input right number" ForeColor="Indigo"  MinimumValue="0"></asp:RangeValidator>
            
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label9" runat="server" Text="IsCandLend" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="1">yes</asp:ListItem>
                <asp:ListItem Value="0">no</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="Location" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please input the book's location." ControlToValidate="TextBox7" ForeColor="Indigo" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Please input the book's location,like B403-12"  ControlToValidate="TextBox7" SetFocusOnError="True" Display="Dynamic" ForeColor="Indigo" ValidationExpression="(A|B|C)[1-9][0-9]{2}-[1-9][0-9]{0,2}"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label8" runat="server" Text="image" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-5 col-sm-3">
            <asp:Image ID="Image1" runat="server" Width="150px" Height="200px" CssClass="img-thumbnail" />
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label11" runat="server" Text="Brief:" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-6 col-md-6">
            <asp:TextBox ID="TextBox9" runat="server"  CssClass="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">           
            <div class="col-sm-offset-4"  style="padding-left:20px">
                <div class="col-sm-1">
                    <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" CssClass="btn btn-primary" />
                </div>
            </div>
            <div class="col-sm-offset-5" style="padding-left:20px">
                <div class="col-sm-1">
                    <asp:Button ID="Button2" runat="server" Text="cancel" OnClick="Button2_Click" CssClass="btn btn-default" Visible="True" CausesValidation="False" />
                </div>                
            </div>
    </div>
</asp:Content>
