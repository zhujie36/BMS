<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2.aspx.cs" Inherits="Reader.test2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="container">
    <form id="form1" runat="server" class="form-horizontal" role="form">
        <div class="form-group">
            <label for="name" class="col-md-2 control-label">name:</label>
            <div class="col-md-10">
                <input id="name" type="text" class="form-control" placeholder="please input name" />
            </div>
            
        </div>
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="col-md-2 control-label"></asp:Label>
            <div class="col-md-10">
                <asp:TextBox ID="TextBox1" CssClass="col-md-10 form-control" runat="server"></asp:TextBox>
            </div>
            
        </div>
        <div class="col-md-offset-2 col-md-10">
            <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btn btn-default" />
        </div>
        
    </form>
    </div>
   

    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
