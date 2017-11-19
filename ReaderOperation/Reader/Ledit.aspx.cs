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
    public partial class Ledit : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (all.ID == null)
            {
                Response.Redirect("login.aspx");
            }
            if (all.LIB == null)
            {
                Response.Redirect("login.aspx");
            }
            if (!IsPostBack)
            {
                TextBox3.Text = all.ID;               
                TextBox1.Text = all.NAME;
                TextBox2.Text = all.LIB.L_pwd;
                TextBox1.Enabled = false;
                TextBox2.Visible = false;
                Panel1.Visible = false;
            }
                
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            all.LIB.L_name = TextBox1.Text.ToString().Trim();
            all.NAME = all.LIB.L_name;
            if(TextBox2.Text.ToString().Trim() != null && TextBox2.Text.ToString().Trim() != "")
                all.LIB.L_pwd = TextBox2.Text.ToString().Trim();
            bool result = T_LibrarianBLL.Update(all.LIB);
            if(result)
            {
                Response.Redirect("IndexLibrarian.aspx");
            }
            else
            {
                Response.Write("<script>alert('Modify error!')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexLibrarian.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button3.Visible = false;
            TextBox2.Visible = true;
            Panel1.Visible = true;
        }
    }
}