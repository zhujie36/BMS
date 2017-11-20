<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="bookAdd.aspx.cs" Inherits="Reader.bookAdd" %>
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
    <div class="form-group" style="padding-top:10px">
        <div class="text-center">
            <h2>Please input the information of the book you want to add.</h2>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label9" runat="server" Text="ISBN"  CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" placeholder="please input book's ISBN!"></asp:TextBox>
        </div>
        <div class="col-sm-1">
            <asp:Button ID="Button3" runat="server" Text="ok" CssClass="btn btn-default" OnClick="Button3_Click" CausesValidation="False" TabIndex="1"  />

        </div>
        <div class="col-sm-3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please input the book's ISBN!" ControlToValidate="TextBox8" ForeColor="Indigo" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="ISBN can only contains numbers" Display="Dynamic" ControlToValidate="TextBox8" ValidationExpression="[0-9]*" ForeColor="Indigo" SetFocusOnError="True"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="name"  CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"  placeholder="please input book's name!"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please input the book's name!" ControlToValidate="TextBox2" ForeColor="Indigo"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="price" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"  placeholder="please input book's price!"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Please input the book's price." ForeColor="Indigo" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="The price format is incorrect." ForeColor="Indigo" ValidationExpression="^[0-9]+(.[0-9]*)?$"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="writerLabel" runat="server" Text="author" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="writeTextBox" runat="server" CssClass="form-control"  placeholder="please input book's author!"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please input the book's writer." ControlToValidate="writeTextBox" ForeColor="Indigo"></asp:RequiredFieldValidator>
           
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label5" runat="server" Text="press" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"  placeholder="please input book's press!"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please input the book's press." ControlToValidate="TextBox5" ForeColor="Indigo"></asp:RequiredFieldValidator>
        </div>
    </div>
     <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="Year of publication" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"  placeholder="please input book's year of publication,like 1996-03-01"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please input the book's year of publication,like 1996-03-01" ForeColor="Indigo" ControlToValidate="TextBox4" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="please input right date,like 1996-03-01"  ControlToValidate="TextBox4" SetFocusOnError="True" Display="Dynamic" ForeColor="Indigo" ValidationExpression="[0-9]{4}(-[0-9]{1,2}){0,2}"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label8" runat="server" Text="Total Number" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" placeholder="please input book's number"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please input the book's number" ControlToValidate="TextBox7" ForeColor="Indigo" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only can contain numbers"  ControlToValidate="TextBox7" SetFocusOnError="True" Display="Dynamic" ForeColor="Indigo" ValidationExpression="[1-9][0-9]*"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="is Can Lend" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" >
                <asp:ListItem Value="1">yes</asp:ListItem>
                <asp:ListItem Value="0">no</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>     
    <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="Location" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="please input book's year of publication,like B403-12"></asp:TextBox>
        </div>
        <div class="col-sm-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please input the book's location,like B403-12" ControlToValidate="TextBox6" ForeColor="Indigo" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Please input the book's location,like B403-12"  ControlToValidate="TextBox6" SetFocusOnError="True" Display="Dynamic" ForeColor="Indigo" ValidationExpression="(A|B|C)[1-9][0-9]{2}-[1-9][0-9]{0,2}"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="image" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:Image ID="Image1" runat="server" Height="150px" Width="210px" />
        </div>
       
    </div>
    <div class="form-group">
        <asp:Label ID="Label10" runat="server" Text="Brief:" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-6 col-md-6">
            <asp:TextBox ID="TextBox1" runat="server"  CssClass="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">           
            <div class="col-sm-offset-4"  style="padding-left:20px">
                <div class="col-sm-1">
                    <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" CssClass="btn btn-primary" TabIndex="2" UseSubmitBehavior="False" />
                </div>
            </div>
            <div class="col-sm-offset-5" style="padding-left:20px">
                <div class="col-sm-1">
                    <asp:Button ID="Button2" runat="server" Text="cancel" OnClick="Button2_Click" CssClass="btn btn-default" CausesValidation="False" TabIndex="3" UseSubmitBehavior="False" />
                </div>                
            </div>
    </div>
</asp:Content>
