<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2.aspx.cs" Inherits="Reader.test2" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>Reg</title>
        <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script>
 
</head>
<body>
        <asp:Repeater ID="LBook" runat="server">
            <ItemTemplate>
        <div class="col-sm-4 my">
            <img class="imag" src="test.aspx" alt="ad"></img>
        </div>
                </ItemTemplate>
            </asp:Repeater>
    <script type="text/javascript">
        $(document).ready(function () {
            var a = 104609;
           
            $(".my").each(function (j, item) {
                 //alert("ok");
               s = "test.aspx?s=" + a;
               a++;
               item.children[0].setAttribute("src", s);
           });
       });
  </script>

</body>
</html>
