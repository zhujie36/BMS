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
                        <a href="bookAdd.aspx" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image1','','images/1-1.jpg',1)"><img src="images/1.jpg" width="146" height="104" border="0" id="Image1" class="img-rounded"/></a>
                    </div>
                    <div style="padding:10px 0; font-weight:bold">
                        Add book
                    </div>
                </div>
                <div class="col-sm-4 text-center">
                    <div>
                        <a href="bookDeleteList.aspx" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image2','','images/2-2.jpg',1)"><img src="images/2.jpg" width="146" height="104" border="0" id="Image2" class="img-rounded" /></a>
                    </div>
                    <div style="padding:10px 0; font-weight:bold">
                        Delete book
                    </div>
                </div>
                <div class="col-sm-4 text-center">
                    <div>
                        <a href="bookList.aspx" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image3','','images/3-3.jpg',1)"><img src="images/3.jpg" width="146" height="104" border="0" id="Image3" class="img-rounded" /></a>
                    </div>
                    <div style="padding:10px 0; font-weight:bold">
                        Update book information
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h2  class="btn btn-primary panel-title" data-toggle="collapse" 
                data-target="#demo1">
                    About reader
                </h2>
            </div>          
            <div id="demo1" class="collapse in row panel-body">
                <div class="col-sm-4 text-center">
                    <div>
                        <a href="Borrow.aspx" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image4','','images/4-4.jpg',1)"><img src="images/4.jpg" width="146" height="104" border="0" id="Image4" class="img-rounded" /></a>
                    </div>
                    <div style="padding:10px 0; font-weight:bold">
                        Borrow
                    </div>
                </div>
                <div class="col-sm-4 text-center">
                    <div>
                        <a href="allBorrowList.aspx" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image5','','images/5-5.jpg',1)"><img src="images/5.jpg" width="146" height="104" border="0" id="Image5" class="img-rounded" /></a>
                    </div>
                    <div style="padding:10px 0; font-weight:bold">
                        Return
                    </div>
                </div>
                <div class="col-sm-4 text-center">
                    <div>
                        <a href="writeOff.aspx" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image6','','images/6-6.jpg',1)"><img src="images/6.jpg" width="146" height="104" border="0" id="Image6" class="img-rounded" /></a>
                    </div>
                    <div style="padding:10px 0; font-weight:bold">
                        Delete reader
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h2  class="btn btn-primary panel-title" data-toggle="collapse" 
                data-target="#demo2">
                    About Librarian
                </h2>
            </div>
            <div id="demo2" class="collapse in row panel-body">
                <div class="col-sm-4 text-center">
                    <div>
                        <a href="Ledit.aspx" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image7','','images/7-7.jpg',1)"><img src="images/7.jpg" width="146" height="104" border="0" id="Image7" class="img-rounded" /></a>
                    </div>
                    <div style="padding:10px 0; font-weight:bold">
                        Modify personal information
                    </div>
                </div>
                <div class="col-sm-4 text-center">
                    <div>
                        <a href="LRegister.aspx" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image8','','images/8-8.jpg',1)"><img src="images/8.jpg" width="146" height="104" border="0" id="Image8" class="img-rounded" /></a>
                    </div>
                    <div style="padding:10px 0; font-weight:bold">
                        Add new Liabrarian
                    </div>
                </div>
                <div class="col-sm-4 text-center">
                    <div>
                        <a href="LwirteOff.aspx" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image9','','images/9-9.jpg',1)"><img src="images/9.jpg" width="146" height="104" border="0" id="Image9" class="img-rounded" /></a>
                    </div>
                    <div style="padding:10px 0; font-weight:bold">
                        Write off
                    </div>
                </div>
            </div>
        </div>
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
