<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2.aspx.cs" Inherits="Reader.test2" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

<script type="text/javascript">
    function test_username() {
        var username = document.getElementById("TextBox1").value;
   
        if (username == "") {
            divname.innerHTML = '<font class="tips_false">Please input the user name.</font>';
            document.getElementById("flag").value = "0";
        } else {
            divname.innerHTML = '<font class="tips_true">Correct</font>';
        }
    }

    function test_password1() {
        var password1 = document.getElementById("TextBox2").value;
        
        if (password1 == "") {
            divpassword1.innerHTML = '<font class="tips_false">Please input the password.</font>';
            document.getElementById("flag").value = "0";
        } else {
        divpassword1.innerHTML = '<font class="tips_true">Correct</font>';
        }
    }

    function test_password2() {
        var password2 = document.getElementById("TextBox6").value;
        var password1 = document.getElementById("TextBox2").value;

        if (password2 == "") {
            divpassword2.innerHTML = '<font class="tips_false">Please input the password.</font>';
            document.getElementById("flag").value = "0";
        } else {
        if (password2 != password1) {
            divpassword2.innerHTML = '<font class="tips_false">Entered passwords differ.</font>';
            document.getElementById("flag").value = "0";
        }
        else {
            divpassword2.innerHTML = '<font class="tips_true">Correct</font>';
        }
        }
    }


    function test_ID() {
        var ID = document.getElementById("TextBox3").value;

        if (ID == "") {
            divID.innerHTML = '<font class="tips_false">Please input the user ID.</font>';
            document.getElementById("flag").value = "0";
        } else {
            divID.innerHTML = '<font class="tips_true">Correct</font>';
        }
    }

    
    function test_phone() {
        var phone = document.getElementById("TextBox4").value;

        if (phone == "") {
            divphone.innerHTML = '<font class="tips_false">Please input the user\'s phone number.</font>';
            document.getElementById("flag").value = "0";
        } else {
            var reg = new RegExp("^[0-9]*$");
            if(!reg.test(phone))
            {
                divphone.innerHTML = '<font class="tips_false">The form is wrong,please input the correct form.</font>';
                document.getElementById("flag").value = "0";
            } else {
            divphone.innerHTML = '<font class="tips_true">Correct</font>';
        }
        }
    }
    

      function test_address() {
        var address = document.getElementById("TextBox5").value;

        if (address == "") {
            divaddress.innerHTML = '<font class="tips_false">Please input the user address.</font>';
            document.getElementById("flag").value = "0";
        } else {
            divaddress.innerHTML = '<font class="tips_true">Correct</font>';
        }
    }
</script>




    <form id="form1" runat="server" onsubmit="test()">
    <div class="left">
           <!-- <table border="1" width="100%" height="100%">
	
		<td align="center" bgcolor="#000000" class="auto-style1">
        <td background="images/img1.jpg" width="100%" height="800">-->
    请输入您的个人信息<br/>

        读者姓名：<asp:TextBox ID="TextBox1" OnBlur="test_username()"  runat="server" ></asp:TextBox>
        <span class="tips" id="divname"></span><br/>
        设置密码：<asp:TextBox ID="TextBox2" OnBlur="test_password1()" runat="server" ></asp:TextBox>
        <span class="tips" id="divpassword1"></span><br/>
        再次输入密码：<asp:TextBox ID="TextBox6" OnBlur="test_password2()" runat="server"></asp:TextBox>
        <span class="tips" id="divpassword2"></span><br/>
        读者性别：<asp:DropDownList ID="DropDownList1" runat="server">
               <asp:ListItem Value="0">男</asp:ListItem>
               <asp:ListItem Value="1">女</asp:ListItem>
               <asp:ListItem Value="2">未知</asp:ListItem>
           </asp:DropDownList><br />
        身份证号：<asp:TextBox ID="TextBox3" OnBlur="test_ID()" runat="server"></asp:TextBox>
         <span class="tips" id="divID"></span><br/>
        联系电话：<asp:TextBox ID="TextBox4" OnBlur="test_phone()" runat="server"></asp:TextBox>
        <span class="tips" id="divphone"></span><br/>
        家庭地址：<asp:TextBox ID="TextBox5" OnBlur="test_address()"  runat="server"></asp:TextBox>
         <span class="tips" id="divaddress"></span></br>
        <asp:Button ID="Button2" runat="server" Text="submit" onclick="Button2_Click" />
    &nbsp;
    <asp:Button ID="Button1" runat="server" Text="cancel" OnClick="Button1_Click" />
    <input type="hidden" runat="server" name="Commend" id="flag" value="1"/>
    </div>
    </form>
</body>
</html>