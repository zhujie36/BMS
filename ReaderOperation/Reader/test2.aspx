<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2.aspx.cs" Inherits="Reader.test2" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>Reg</title>
        <style type="text/css">
            .state1{
                color:#aaa;
            }
            .state2{
                color:#000;
            }
            .state3{
                color:red;
            }
            .state4{
                color:green;
            }
        </style>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(function () {
                $('#form1').validate({
                    rules: {
                        firstname: {
                            required: true,
                            minlength: 5
                        },
                        lastname: "required",
                        username: {
                            required: true,
                            rangelength: [4, 6]
                        },
                        password: {
                            required: true,
                            minlength: 4,
                            number: true
                        },
                        confirm_password: {
                            required: true,
                            minlength: 3,
                            equalTo: '#password'
                        },
                        email: {
                            required: true,
                            email: true
                        },
                    }
                });
            });

        </script>
    </head>
<body>
  

     <form id="form1" runat="server" class="form-horizontal" role="form">
 <fieldset>
 <legend>验证完整的表单</legend>
 <p>
 <label for="firstname">名字</label>
     <asp:TextBox ID="firstname" runat="server" ClientIDMode="Static" placeHolder="请输入名字"></asp:TextBox>
 </p>
 <p>
 <label for="lastname">姓氏</label>
     <asp:TextBox ID="lastname" runat="server" ClientIDMode="Static"></asp:TextBox>
 </p>
 <p>
 <label for="username">用户名</label>
     <asp:TextBox ID="username" runat="server" ClientIDMode="Static"></asp:TextBox>
 </p>
 <p>
 <label for="password">密码</label>
 <input id="password" name="password" type="password">
 </p>
 <p>
 <label for="confirm_password">验证密码</label>
 <input id="confirm_password" name="confirm_password" type="password">
 </p>
 <p>
 <label for="email">Email</label>
 <input id="email" name="email" type="email">
 </p>
 <p>
 <label for="agree">请同意我们的声明</label>
 <input type="checkbox" class="checkbox" id="agree" name="agree">
 </p>
 <p>
 <input class="submit" type="submit" value="提交">
 </p>
 </fieldset>
 </form>

</body>
    </html>