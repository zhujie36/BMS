<%@ Page Title="" Language="C#" MasterPageFile="~/RNacigator.Master" AutoEventWireup="true" CodeBehind="IndexReader.aspx.cs" Inherits="Reader.IndexReader" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container-fluid" >
            <div class="row"  >
                <br /><br /><br /> <br /><br /><br /><br /><br /><br /><br /><br />
                <div class="col-sm-4 text-center">
                    <div>
                        <a href="bookFind.aspx" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image10','','images/10-10.jpg',1)">
                            <img src="images/10.jpg" width="146" height="104" border="0" id="Image10" class="img-rounded" /></a>
                    </div>
                    <div style="padding: 10px 0; font-weight: bold">
                        <p style="font-size:23px;">find book</p>
            
                    </div>
                </div>
                <div class="col-sm-4 text-center">
                    <div>
                        <a href="RBorrowlist.aspx" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image5','','images/5-5.jpg',1)">
                            <img src="images/5.jpg" width="146" height="104" border="0" id="Image5" class="img-rounded" /></a>
                    </div>
                    <div style="padding: 10px 0; font-weight: bold">
                        <p style="font-size:23px;">look up Borrowed list</p>
                    </div>
                </div>
                <div class="col-sm-4 text-center">
                    <div>
                        <a href="Redit.aspx" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image11','','images/12-12.jpg',1)">
                            <img src="images/12.jpg" width="146" height="104" border="0" id="Image11" class="img-rounded" /></a>
                    </div>
                    <div style="padding: 10px 0; font-weight: bold">
                        <p style="font-size:23px;">Modify personal information</p>
                    </div>
                </div>
            </div>
        </div>

    <script type="text/JavaScript">

        function MM_swapImgRestore() { //v3.0
            var i, x, a = document.MM_sr; for (i = 0; a && i < a.length && (x = a[i]) && x.oSrc; i++) x.src = x.oSrc;
        }

        function MM_preloadImages() { //v3.0
            var d = document; if (d.images) {
                if (!d.MM_p) d.MM_p = new Array();
                var i, j = d.MM_p.length, a = MM_preloadImages.arguments; for (i = 0; i < a.length; i++)
                    if (a[i].indexOf("#") != 0) { d.MM_p[j] = new Image; d.MM_p[j++].src = a[i]; }
            }
        }

        function MM_findObj(n, d) { //v4.01
            var p, i, x; if (!d) d = document; if ((p = n.indexOf("?")) > 0 && parent.frames.length) {
                d = parent.frames[n.substring(p + 1)].document; n = n.substring(0, p);
            }
            if (!(x = d[n]) && d.all) x = d.all[n]; for (i = 0; !x && i < d.forms.length; i++) x = d.forms[i][n];
            for (i = 0; !x && d.layers && i < d.layers.length; i++) x = MM_findObj(n, d.layers[i].document);
            if (!x && d.getElementById) x = d.getElementById(n); return x;
        }

        function MM_swapImage() { //v3.0
            var i, j = 0, x, a = MM_swapImage.arguments; document.MM_sr = new Array; for (i = 0; i < (a.length - 2); i += 3)
                if ((x = MM_findObj(a[i])) != null) { document.MM_sr[j++] = x; if (!x.oSrc) x.oSrc = x.src; x.src = a[i + 2]; }
        }

</script>
</asp:Content>
