using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;
namespace Reader
{
    public partial class head : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(all.NAME != null && all.NAME != "")
                {
                    LoginName.Text = "Welcome，" + all.NAME;
                    Panel1.Visible = true;
                    //Response.Write("<script type='text/javascript'>function myfun(){$(\"#logInAndOut\").show();}</script>");
                }              
                else
                {
                    Panel1.Visible = false;
                    //Response.Write("<script>alert('name is null')</script>");
                    //Response.Write("<script type='text/javascript'>function myfun(){$(\"#logInAndOut\").hide();}</script>");
                    //ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>MyFun();</script>");
                }
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            all.NAME = "";
            all.ID = "";
            all.LIB = null;
            all.READER = null;
            Response.Redirect("login.aspx");
        }
    }
}