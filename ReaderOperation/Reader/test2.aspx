<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test2.aspx.cs" Inherits="Reader.test2" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>Reg</title>
        
 <script language="Javascript">
     function preview() {
         bdhtml = window.document.body.innerHTML;
         sprnstr = "<!--startprint-->";
         eprnstr = "<!--endprint-->";
         prnhtml = bdhtml.substr(bdhtml.indexOf(sprnstr) + 17);
         prnhtml = prnhtml.substring(0, prnhtml.indexOf(eprnstr));
         window.document.body.innerHTML = prnhtml;
         window.print();
     }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;<asp:Button ID="btndaochu" runat="server" Text="导出数据" OnClick="btndaochu_Click" />
          <input type="button" name="print" value="预览并打印" onclick="preview()">
        <br />
        <br />
        <br />


        <div runat="server" id="aa">
         <!--startprint-->
     <div>

        <asp:DataList ID="DataList1" runat="server" OnItemDataBound="DataList1_ItemDataBound">
            <ItemTemplate>
                姓名：<asp:Label ID="lblname" runat="server" Width="133px" Text=<%#Eval("姓名") %>></asp:Label><br />
                工作单位：<asp:Label ID="lblDeptworkname" runat="server" Text=<%#Eval("工作单位") %> Width="431px"></asp:Label><br />
                证书类别：<asp:Label ID="lbltype" runat="server" Text=<%#Eval("执证类别") %> Width="339px"></asp:Label><br />
                证书编号：<asp:Label ID="lblid" runat="server" Text=<%#Eval("执证号码") %> Width="426px"></asp:Label><br />
                
               &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                   <asp:Label ID="lbl" runat="server"  Width="193px"></asp:Label><br />
            </ItemTemplate>
            <SeparatorTemplate>
                <br />
            </SeparatorTemplate>
        </asp:DataList>
         </div>
     <!--endprint-->
            <asp:Image ID="Image1" runat="server" />
    </div>
    </div>
    </form>
</body>
</html>
