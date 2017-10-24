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
    public partial class LwirteOff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "hi, " + all.NAME + ", are you sure to write off?";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool result = T_LibrarianBLL.Delete(all.ID);
            if (result == true)
            {
                all.NAME = null;
                all.ID = null;
                all.LIB = null;
                all.READER = null;
                Response.Redirect("login.aspx");
                         
            }
            else
            {
                Response.Write("<script>alert('delete failed！')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexLibrarian.aspx");    
        }
    }
}