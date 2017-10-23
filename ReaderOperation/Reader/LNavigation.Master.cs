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
    public partial class LNavigation : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (all.NAME != null && all.NAME != "")
                {
                    Label1.Text = "欢迎您，" + all.NAME;
                    Label1.Visible = true;
                    Button1.Visible = true;
                }
                else
                {
                    Label1.Visible = false;
                    Button1.Visible = false;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            all.NAME = null;
            all.ID = null;
            all.LIB = null;
            all.READER = null;
            Response.Redirect("login.aspx");
        }
    }
}