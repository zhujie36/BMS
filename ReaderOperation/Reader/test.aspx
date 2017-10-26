<%@ Page Title="" Language="C#" MasterPageFile="~/headstyle.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Reader.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headstyle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset>
 <legend>验证完整的表单</legend>
 <p>
 <label for="firstname">名字</label>
<asp:TextBox ID="firstname" runat="server" ClientIDMode="Static" placeHolder="请输入名字"></asp:TextBox>
 </p>
 <p>
 <label for="lastname">姓氏</label>
 <input id="lastname" name="lastname" type="text">
 </p>
 <p>
 <label for="username">用户名</label>
 <input id="username" name="username" type="text">
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
        <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.validate.min.js"></script>
    <script type="text/javascript">
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
    </script>
</asp:Content>
