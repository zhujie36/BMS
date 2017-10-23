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
            
            if (!IsPostBack)
            {
                Label2.Text = all.ID;               
                TextBox1.Text = all.NAME;
                TextBox2.Text = all.LIB.L_pwd;
            }
                
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            all.LIB.L_name = TextBox1.Text.ToString().Trim();
            all.NAME = all.LIB.L_name;
            all.LIB.L_pwd = TextBox2.Text.ToString().Trim();
            bool result = T_LibrarianBLL.Update(all.LIB);
            if(result)
            {
                Response.Redirect("IndexLibrarian.aspx");
            }
            else
            {
                Response.Write("<script>alert('修改出错!')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexLibrarian.aspx");
        }
    }
}