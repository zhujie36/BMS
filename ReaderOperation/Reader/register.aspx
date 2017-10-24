<%@ Page Title="" Language="C#" MasterPageFile="~/headstyle.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Reader.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headstyle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
        <div class="col-sm-offset-4 col-md-8">
            <h2>请输入您的个人信息</h2>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="读者姓名：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="设置密码：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password" ></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="再次输入密码：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="读者性别：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
               <asp:ListItem Value="0">男</asp:ListItem>
               <asp:ListItem Value="1">女</asp:ListItem>
               <asp:ListItem Value="2">未知</asp:ListItem>
           </asp:DropDownList>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label5" runat="server" Text="身份证号：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="联系电话：" CssClass="ccol-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="家庭地址：" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
           <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox><br/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-4 col-sm-8">
            <asp:Button ID="Button2" runat="server" Text="submit" onclick="Button2_Click" CssClass="btn btn-primary" />
            &nbsp;
            <asp:Button ID="Button1" runat="server" Text="cancel" OnClick="Button1_Click" CssClass="btn btn-default" />
        </div>
    </div> 
    

     <input type="hidden" runat="server" name="Commend" id="flag" value="1"/>

    <script type="text/javascript">
    function validate() {
        var username = document.getElementById("TextBox1");
        var password1 = document.getElementById("TextBox2");
        var password2 = document.getElementById("TextBox6");
        var ID = document.getElementById("TextBox3");
        var phone = document.getElementById("TextBox4");
        var address = document.getElementById("TextBox5");


        if (username.value == "") {
            alert("Username can not be blank!");
            document.getElementById("flag").value = "0";
            return false;
        }


        if (password1.value == "" || password2.value == "") {
            alert("Password can not be blank!");
            document.getElementById("flag").value = "0";
            return false;
        }

        if (password1.value != password2.value) {
            alert("Entered password differ!");
            document.getElementById("flag").value = "0";
            return false;
        }



        if (ID.value == "") {
            alert("UserID's can not be blank!");
            document.getElementById("flag").value = "0";
            return false;
        }
        else {
            if (ID.value.length != 18) {
                alert("UserID's formal is wrong");
                document.getElementById("flag").value = "0";
                return false;
            }
        }



        if (phone.value == "") {
            alert("User's phone number can not be blank!");
            document.getElementById("flag").value = "0";
            return false;
        }
        else {
            var reg2 = new RegExp("^[1-9][0-9]*$");
            if (!reg2.test(phone.value)) {
                alert("The formal of the user's phone number is wrong!");
                document.getElementById("sign").value = "0";
                return false;
            }          
        }


        if (address.value == "") {
            alert("User's address can not be blank!");
            document.getElementById("flag").value = "0";
            return false;
        } 
    }
    </script>




</asp:Content>
