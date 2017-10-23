<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="IndexLibrarian.aspx.cs" Inherits="Reader.IndexLibrarian" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h2  class="btn btn-primary panel-title" data-toggle="collapse" 
                data-target="#demo">
                    About book
                </h2>
            </div>           
            <div id="demo" class="collapse in row panel-body">
                <div class="col-sm-4 text-center">
                    <div>
                        <a href="bookAdd.aspx" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image1','','images/5-5.jpg',1)"><img src="images/5.jpg" width="146" height="104" border="0" id="Image1"/></a>
                    </div>
                    <div>
                        add book
                    </div>
                </div>
                <div class="col-sm-4 text-center">
                    <div>
                        <a href="bookAdd.aspx" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image2','','images/5-5.jpg',1)"><img src="images/5.jpg" width="146" height="104" border="0" id="Image2" /></a>
                    </div>
                    <div>
                        add book
                    </div>
                </div>
                <div class="col-sm-4 text-center">
                    <div>
                        <a href="bookAdd.aspx" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image3','','images/5-5.jpg',1)"><img src="images/5.jpg" width="146" height="104" border="0" id="Image3" /></a>
                    </div>
                    <div>
                        add book
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div>
            <h2  class="btn btn-primary" data-toggle="collapse" 
            data-target="#demo1">
                About book
            </h2>
            <div id="demo1" class="collapse in row">
                <div class="col-sm-4 text-center">
                    <div>
                        <a href="bookAdd.aspx" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image4','','images/5-5.jpg',1)"><img src="images/5.jpg" width="146" height="104" border="0" id="Image4" /></a>
                    </div>
                    <div>
                        add book
                    </div>
                </div>
                <div class="col-sm-4 text-center">
                    <div>
                        <a href="bookAdd.aspx" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image5','','images/5-5.jpg',1)"><img src="images/5.jpg" width="146" height="104" border="0" id="Image5" /></a>
                    </div>
                    <div>
                        add book
                    </div>
                </div>
                <div class="col-sm-4 text-center">
                    <div>
                        <a href="bookAdd.aspx" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image6','','images/5-5.jpg',1)"><img src="images/5.jpg" width="146" height="104" border="0" id="Image6" /></a>
                    </div>
                    <div>
                        add book
                    </div>
                </div>
            </div>
        </div>
    </div>


   
    <br />
    <div style="text-align:center; width:100%">
        <asp:ImageButton ID="ImageButton4" runat="server" OnClick="ImageButton1_Click" ImageUrl="~/images/1.jpg" /><br />
    <asp:Label ID="Label4" runat="server" Text="图书添加"></asp:Label>
    <br /><br />
        <asp:ImageButton ID="ImageButton9" runat="server" />
        <br />
        <asp:Label ID="Label9" runat="server" Text="图书删除"></asp:Label>
    <br /><br />
    <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/2.jpg" OnClick="ImageButton2_Click" /><br />
    <asp:Label ID="Label5" runat="server" Text="图书查改"></asp:Label>
    <br /><br />
    <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/images/10.jpg" OnClick="ImageButton3_Click" /><br />
    <asp:Label ID="Label6" runat="server" Text="个人信息修改"></asp:Label><br /><br />

        <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/images/4.jpg" OnClick="ImageButton1_Click1"  onmouseover="imageChange(ImageButton1,~/images/4-4.jpg)"/><br />
        <asp:Label ID="Label1" runat="server" Text="处理借阅"></asp:Label>
        <br /><br />
        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/3.jpg" OnClick="ImageButton2_Click1" /><br />
        <asp:Label ID="Label2" runat="server" Text="增加新的管理员"></asp:Label>
        <br /><br />
        <asp:ImageButton ID="ImageButton3" runat="server"  ImageUrl="~/images/6.jpg" OnClick="ImageButton3_Click1"/><br />
        <asp:Label ID="Label3" runat="server" Text="处理还书"></asp:Label>
        <br /><br />
        <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/images/7.jpg" OnClick="ImageButton7_Click" />
        <br />
        <asp:Label ID="Label7" runat="server" Text="注销读者"></asp:Label>
        <br /><br />
        <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/images/13.jpg" OnClick="ImageButton8_Click"/>
        <br />
        <asp:Panel ID="Panel1" runat="server">
            <p>Are you sure to write off?</p>
            <asp:Button ID="Button1" runat="server" Text="yes" OnClick="Button1_Click" />
            &nbsp;
            <asp:Button ID="Button2" runat="server" Text="no" />
        </asp:Panel>
        <asp:Label ID="Label8" runat="server" Text="注销"></asp:Label>
    </div>

    <script type="text/JavaScript">

        function MM_swapImgRestore() { //v3.0
          var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
        }

        function MM_preloadImages() { //v3.0
          var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
            var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
            if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
        }

        function MM_findObj(n, d) { //v4.01
          var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
            d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
          if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
          for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
          if(!x && d.getElementById) x=d.getElementById(n); return x;
        }

        function MM_swapImage() { //v3.0
          var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
           if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
        }

</script>

</asp:Content>
