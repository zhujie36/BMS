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
                    <td class="text-right col-sm-4" style=" font-weight:bold; font-size:large; padding-right:10px">Borrow&nbsp;number</td>
                    <td><asp:Label ID="Label_BorrowID" runat="server" Text="Label" class="text-left" style=" font-weight:bold; font-size:large; padding-left:10px"></asp:Label></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="text-right" style=" font-weight:bold; padding-right:10px; font-size:large;">Reader</td>
                    <td><asp:Label ID="Label_ReaderID" runat="server" Text="Label" class="text-left" style=" font-weight:bold; font-size:large; padding-left:10px"></asp:Label></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="text-right" style=" font-weight:bold; font-size:large; padding-right:10px">Book&nbsp;number</td>
                    <td><asp:Label ID="Label_BookID" runat="server" Text="Label1" class="text-left" style=" font-weight:bold; font-size:large; padding-left:10px"></asp:Label></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="text-right" style=" font-weight:bold; font-size:large; padding-right:10px">Book&nbsp;name</td>
                    <td><asp:Label ID="Label_BookName" runat="server" Text="Label1" class="text-left" style=" font-weight:bold; font-size:large; padding-left:10px"></asp:Label></td>
                    <td></td>
                </tr>
                <tr>
                    <td class="text-right" style=" font-weight:bold; font-size:large; padding-right:10px">Borrow&nbsp;time</td>
                    <td><asp:Label ID="LabelStartTime" runat="server" Text="Label1" class="text-left" style=" font-weight:bold; font-size:large; padding-left:10px"></asp:Label></td>
                    <td></td>
                </tr>
                 <tr>
                    <td class="text-right" style=" font-weight:bold; font-size:large; padding-right:10px">Borrow&nbsp;Number</td>
                    <td><asp:Label ID="number" runat="server" Text="Label1" class="text-left" style=" font-weight:bold; font-size:large; padding-left:10px"></asp:Label></td>
                    <td></td>
                </tr>
            </table>
          </div>
        </div>
        <div class="form-group">
            
                <asp:Panel ID="Panel1" runat="server">
                    <div>
                    <asp:Label ID="Label1" runat="server" Text="Choose the amount of the book to return："  CssClass="col-sm-6 control-label"  Font-Bold="True" Font-Size="Large"></asp:Label>
                    <div class="col-sm-2">
                         <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox> 
                    </div>
                        <div class="col-sm-4">
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" ControlToValidate="TextBox1" MinimumValue="0"></asp:RangeValidator>
                        </div>
                    </div> 
                </asp:Panel>
           
            
        </div>
                
        <div class="form-group">
            <div class="col-sm-offset-4" style="padding-left:20px">
                <div class="col-sm-2">
                    <asp:Button ID="Button1" runat="server" Text="cancel" CssClass="btn btn-default" OnClick="Button1_Click" />
                </div>
                <div class="col-sm-2">
                    <asp:Button ID="Return" runat="server" Text="return the book" OnClick="Return_Click"  CssClass="btn btn-primary" />
                </div>
            </div>           
        </div>
                    
            

    </asp:Content>
