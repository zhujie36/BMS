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
    public partial class bookFind : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LBook.DataSource = T_bookBLL.GetAllData();
                LBook.DataBind();
                
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text.Trim() != "")
            {
                string name = TextBox2.Text.Trim();
                LBook.DataSource = T_bookBLL.GetByName(name);
            }
            else if (TextBox1.Text.Trim() != "")
            {
                string category = TextBox1.Text.Trim();
                LBook.DataSource = T_bookBLL.GetByCategory(category);
            }
            else
            {
                LBook.DataSource = T_bookBLL.GetAllData();
            }
            LBook.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexReader.aspx");
        }
    }
}