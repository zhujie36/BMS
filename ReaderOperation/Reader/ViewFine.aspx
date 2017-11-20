<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="ViewFine.aspx.cs" Inherits="Reader.ViewFine1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
    body {
    background-image:url(images/shu5.png);
    background-attachment:fixed;
    background-position:right bottom;
    background-repeat:no-repeat;
    background-size:350px 370px;
    }
    .ziti{
        font-family:'Times New Roman', Times, serif;
        font-size:25px;
    }
    .auto-style1 {
        width: 249px;
    }
    .auto-style2 {
        width: 474px;
        margin-top: 0px;
    }
</style>
    <div class="ziti">
        <br />
      <table class="auto-style2">
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Today's earning : "></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Yuan"></asp:Label>
            </td>
        </tr>

        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" Text="This week's earning :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Yuan"></asp:Label>
            </td>
        </tr>

        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label6" runat="server" Text="This month's earning :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Yuan"></asp:Label>
            </td>
        </tr>

        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label8" runat="server" Text="This year's earning : "></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Yuan"></asp:Label>
            </td>
        </tr>
    </table>
    <br /><br />
        
        <div class="form-group">
            <span class=" glyphicon glyphicon-tag" style="font-size:15px;">If you want to check the profitability of other time periods, please click there.</span>
            <asp:Button ID="Button2" runat="server" Text="detail" OnClick="Button2_Click" CssClass="btn btn-default" />
        </div>
        <div class="form-group">
        <asp:Panel ID="Panel1" runat="server" Visible="False">
           
            <div class="row">
                <asp:Label ID="Label13" runat="server" Text="Please choose the begin date and end date : "></asp:Label><br /> <br />
            </div>
            <div class="row">
                <div class="">
                    <asp:Label ID="Label17" runat="server" Text="Year"></asp:Label>  - <asp:Label ID="Label18" runat="server" Text="Month"></asp:Label>
                    :&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                    Y&nbsp;&nbsp;&nbsp;
   
                     <asp:DropDownList ID="DropDownList2" runat="server"> 
                     </asp:DropDownList>
    
                    M&nbsp; ----&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server">
                    </asp:DropDownList>
                    Y &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList4" runat="server">
                    </asp:DropDownList>
                    M
                    &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" CssClass="btn btn-default" />
                </div>
            </div>
            <div class="row" style="margin-top:15px;">
                <div class="col-sm-6" style="background-color:#FFE4C4; padding:10px; border-radius:5px">
                    <asp:Label ID="Label16" runat="server" Text=""></asp:Label>
                </div>               
            </div>
            </asp:Panel>
            </div>
  </div>

</asp:Content>
