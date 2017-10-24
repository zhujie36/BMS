<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="Reader.Detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
        <div style="width:100%; text-align:center">
            <h2>Are you sure to return this book?</h2>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-4">
            <table class="table-responsive" style="line-height:50px;">
                <tr>
                    <td class="text-right col-sm-4" style=" font-weight:bold; padding-right:10px">Borrow&nbsp;number(借阅编号)</td>
                    <td><asp:Label ID="Label_BorrowID" runat="server" Text="Label" class="text-left" style=" font-weight:bold; padding-left:10px"></asp:Label></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="text-right" style=" font-weight:bold; padding-right:10px">Reader(读者)</td>
                    <td><asp:Label ID="Label_ReaderID" runat="server" Text="Label" class="text-left" style=" font-weight:bold; padding-left:10px"></asp:Label></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="text-right" style=" font-weight:bold; padding-right:10px">Book&nbsp;number(书籍编号)</td>
                    <td><asp:Label ID="Label_BookID" runat="server" Text="Label1" class="text-left" style=" font-weight:bold; padding-left:10px"></asp:Label></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="text-right" style=" font-weight:bold; padding-right:10px">Book&nbsp;name(书名)
                    <td><asp:Label ID="Label_BookName" runat="server" Text="Label1" class="text-left" style=" font-weight:bold; padding-left:10px"></asp:Label></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="text-right" style=" font-weight:bold; padding-right:10px">Borrow&nbsp;time(借阅起始时间)</td>
                    <td><asp:Label ID="LabelStartTime" runat="server" Text="Label1" class="text-left" style=" font-weight:bold; padding-left:10px"></asp:Label></td>
                    <td></td>
                </tr>
                 <tr>
                    <td class="text-right" style=" font-weight:bold; padding-right:10px">Borrow&nbsp;Number(借阅数量)</td>
                    <td><asp:Label ID="number" runat="server" Text="Label1" class="text-left" style=" font-weight:bold; padding-left:10px"></asp:Label></td>
                    <td></td>
                </tr>
            </table>
          </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-4">

                <asp:Panel ID="Panel1" runat="server">
                    <asp:Label ID="Label1" runat="server" Text="选择归还数量："  CssClass="col-sm-3 control-label"  Font-Bold="True" Font-Size="Large"></asp:Label>
                    <div class="col-sm-2">
                         <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox> 
                    </div>                                   
                </asp:Panel>
            </div>
            
        </div>
                
        <div class="form-group">
            <div class="col-sm-offset-4" style="padding-left:20px">
                <div class="col-sm-2">
                    <a href="AllBorrowList.aspx" class="btn btn-default" role="button">return&nbsp;list</a>
                </div>
                <div class="col-sm-2">
                    <asp:Button ID="Return" runat="server" Text="return the bok" OnClick="Return_Click"  CssClass="btn btn-primary" />
                </div>
            </div>           
        </div>
                    
            

    </asp:Content>
