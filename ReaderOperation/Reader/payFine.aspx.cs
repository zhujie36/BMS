using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLL;
namespace Reader
{
    public partial class payFine : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (all.ID == null)
            {
                Response.Redirect("login.aspx");
            }
            if (!IsPostBack)
            {
                string name = Request.QueryString["name"];
                T_Reader reader = T_ReaderBLL.GetDataByName(name);
                if(name != null)
                {
                    Panel1.Visible = true;
                    TextBox2.Text = reader.R_state.ToString();
                }
                else
                {
                    Panel1.Visible = false;
                }
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text.Trim();
            bool result = T_ReaderBLL.setState(name, 0);
            if(result)
            {
                Response.Redirect("IndexLibrarian.aspx");
            }
            else
            {
                Response.Write("<script>alert('pay fine failed!')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexLibrarian.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text.Trim();
            T_Reader reader = T_ReaderBLL.GetDataByName(name);
            if (reader != null)
            {
                Panel1.Visible = true;
                TextBox2.Text = reader.R_state.ToString();
            }
            else
            {
                Response.Write("<script>alert('please input true stu_id!')</script>");
            }
        }
    }
}