<%@ Page Title="" Language="C#" MasterPageFile="~/RNacigator.Master" AutoEventWireup="true" CodeBehind="bookFind.aspx.cs" Inherits="Reader.bookFind" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="form-group">
        <div style="width:100%; text-align:center">
            <h2>Book Search</h2>
        </div>
    </div>
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Author" CssClass="col-sm-2 col-md-2 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-3">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <asp:Label ID="Label2" runat="server" Text="name" CssClass="col-sm-2 col-md-2 control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
        <div class="col-sm-3">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-1">
            <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" CssClass="btn btn-primary" />
        </div>
        <div class="col-sm-1">
            <asp:Button ID="Button1" runat="server" Text="Return" OnClick="Button1_Click" CssClass="btn btn-default" />
        </div>
    </div>
    

    <asp:Repeater ID="LBook" runat="server">
            <ItemTemplate>
                <a href="RBookIntro.aspx?id=<%#Eval("ISBN") %>"  >
                 <div class="form-group bigger" style="padding:12px; ">
                    <div class="col-sm-offset-2 col-sm-2">
                        <img width="120" height="140" src='<%#Eval("Pic") %>' alt="Didn't upload book picture." class="img-rounded" />
                    </div>
                    <div class="col-sm-8" style="line-height:30px; font-size:10px">
                        <div style="padding-left:10px">
                           <h3>
                                <%#Eval("name") %>
                           </h3> 
                        </div>
                        <div>
                            <div class="col-sm-6">
                                <label class="col-sm-4">
                                    author:
                                </label>
                                <label class="col-sm-8">
                                    <%#Eval("author") %>
                                </label>                                
                            </div>
                            <div class="col-sm-6">
                                <label class="col-sm-4">
                                    press:
                                </label>
                                <label class="col-sm-8">
                                    <%#Eval("press") %>
                                </label>                               
                            </div>
                        </div>
                        <div>
                            <div class="col-sm-6">
                                <label class="col-sm-4">
                                    TimeOfPublication:
                                </label>
                                <label class="col-sm-8">
                                    <%#Eval("yearOfPublication") %>
                                </label>                                 
                            </div>
                            <div class="col-sm-6">
                                <label class="col-sm-4">
                                    location:
                                </label>
                                <label class="col-sm-8">
                                    <%#Eval("location") %>
                                </label>                             
                            </div>                        
                        </div>
                        <div>
                            <div class="col-sm-4">
                                <label class="col-sm-6">
                                    total Amount:
                                </label>
                                <label class="col-sm-6">
                                    <%#Eval("totalAmount") %>
                                </label>                               
                            </div>
                            <div class="col-sm-4">
                                <label class="col-sm-6">
                                    loan Amount:
                                </label>
                                <label class="col-sm-6">
                                    <%#Eval("loanAmount") %>
                                </label>                                
                            </div>
                            <div class="col-sm-4">
                                <label class="col-sm-6">
                                    Is Can Lend:
                                </label>
                                <label class="col-sm-6">
                                    <%#Eval("isCanLend") %>
                                </label>                                
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <a></a>
                    </div>
                </div>
                </a>
            </ItemTemplate>
        </asp:Repeater>
        
</asp:Content>
