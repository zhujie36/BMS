<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="writeOff.aspx.cs" Inherits="Reader.writeOff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
        <div class="col-sm-offset-3 col-md-8">
            <h2>please input information about reader</h2>
        </div>
    </div>
    <div class="form-group" style="margin-top:30px">
        <asp:Label ID="Label2" runat="server" Text="name:" CssClass="col-sm-4 col-md-4 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-4 col-md-4">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="form-group">
        <asp:Panel ID="Panel1" runat="server">
            <div class="alert alert-warning col-sm-offset-4 col-sm-4">
	            <a href="#" class="close" data-dismiss="alert">
		            &times;
	            </a>
                <span>
                    <asp:Label ID="Label3" runat="server" Text="" CssClass="control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
                </span>
            </div>
        </asp:Panel>
        
    </div>
    
   
    
    <div class="form-group" style=" padding-top:30px;">
        <div class="col-sm-offset-5 col-xs-offset-2">
            <div class="col-sm-1">
                <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" CssClass="btn btn-primary" />
            </div>
        </div>
        <div class="col-sm-offset-6">
            <div class="col-sm-1">
                <asp:Button ID="Button2" runat="server" Text="cancel" OnClick="Button2_Click" CssClass="btn btn-default" />
            </div>            
        </div>
    </div> 
    
</asp:Content>
