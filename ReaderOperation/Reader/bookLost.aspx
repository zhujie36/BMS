<%@ Page Title="" Language="C#" MasterPageFile="~/LNavigation.Master" AutoEventWireup="true" CodeBehind="bookLost.aspx.cs" Inherits="Reader.bookLost" %>
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
</style><br/>
     <div class="form-group">
        <div style="width:100%; text-align:center">
            <h2>deal with damage or lost</h2>
        </div>
    </div><br/>
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="stu_ID:" CssClass="col-sm-4 control-label"></asp:Label>
        <div class="col-sm-4">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-2 text-center">
            <asp:Button ID="Button1" runat="server" Text="ok" OnClick="Button1_Click" CssClass="btn btn-primary" />
        </div>
        <div class="col-sm-2">
            <asp:Button ID="Button2" runat="server" Text="return" OnClick="Button2_Click" CssClass="btn btn-default" UseSubmitBehavior="False" CausesValidation="False" />
        </div>
    </div>
    <div class="form-group">
       <asp:Panel ID="Panel1" runat="server">
           <div class="text-center">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ForeColor="Indigo" ErrorMessage="Please input the reader name." Display="Dynamic" Font-Size="Large"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="please input right student's ID!" Display="Dynamic" ForeColor="Indigo" ControlToValidate="TextBox1" ValidationExpression="[0-9]{11}" SetFocusOnError="True" Font-Size="Large"></asp:RegularExpressionValidator>
           </div>
            <div class="alert alert-warning col-sm-offset-4 col-sm-4">
	            <a href="#" class="close" data-dismiss="alert">
		            &times;
	            </a>
                <span style="line-height:30px">
                    <asp:Label ID="Label2" runat="server" Text="" CssClass="control-label" Font-Bold="True" Font-Size="Large"></asp:Label>
                </span>
            </div>
        </asp:Panel>  
    </div>
    <div class="form-group">
        <asp:Panel ID="Panel2" runat="server">
    <table class="table table-hover table-responsive table-striped text-center">
        <thead>
            <tr>
                <th class="money"></th>
                <th class="text-center">Book&nbsp;ID&nbsp;&nbsp;</th>
                <th class="text-center">Book&nbsp;name&nbsp;&nbsp;</th>
                <th class="text-center">Book&nbsp;Amount&nbsp;&nbsp;</th>
                <th class="text-center">Borrow&nbsp;time&nbsp;&nbsp;</th>
                <th class="text-center">Operation</th>
            </tr>
        </thead>
        <tbody>
            
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>    
                        <tr>
                            <td class="money" id="qq">
                                <%#Eval("Money") %>
                            </td>
                            <td><%#Eval("BookID") %></td>
                            <td><%#Eval("BookName") %></td>
                            <td><%#Eval("Num") %></td>
                            <td><%#Eval("StartTime") %></td>
                            <td>
                                <a href="payFine.aspx?borrowID=<%#Eval("borrowID") %>&type=damage" class="btn btn-default">
                                    damage
                                </a>
                                &nbsp;
                                <a href="payFine.aspx?type=lost&borrowID=<%#Eval("borrowID") %>" class="btn btn-default">
                                    lost
                                </a>                               
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                       
        </tbody>       
       </table>
            </asp:Panel>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            /*$(".money").each(function (j, item) {
                if (item.textContent.toString().trim() != "0")
                {
                    alert(item.textContent);
                    item.parentElement();
                }
            });*/
            $(".money").hide();
            $("tr").each(function (j, item) {
                var t = item.firstElementChild;
                if (t.textContent.toString().trim() != "0" && t.textContent.toString().trim() != "") {
                    //alert(t.textContent);
                    $(this).addClass("warning");
                }
            });
            
        });
    </script>
</asp:Content>
