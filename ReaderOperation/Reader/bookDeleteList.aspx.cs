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
    public partial class bookDeleteList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (all.ID == null)
            {
                Response.Redirect("login.aspx");
            }
            if (!IsPostBack)
            {
                LBook.DataSource = T_bookBLL.GetAllData();
                LBook.DataBind();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text.Trim() != "")
            {
                int id = int.Parse(TextBox3.Text.Trim());
                List<T_book> lb = new List<T_book>();
                lb.Add(T_bookBLL.GetDataByID(id));
                LBook.DataSource = lb;
            }
            else if (TextBox2.Text.Trim() != "")
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexLibrarian.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = TextBox4.Text.Trim();
            string[] booklist = s.Split(',');
            bool result = true;
            for(int i=0; i<booklist.Length && booklist[i] !=""; i++)
            {
                if(!T_bookBLL.Delete(int.Parse(booklist[i])))
                {
                    result = false;
                    break;
                }
            }
            if(result)
            {
                Response.Write("<script>alert('delete succeed!')</script>");
                Response.Write("<script>javascript:location.href='IndexLibrarian.aspx?'</script>");
            }
            else
            {
                Response.Write("<script>alert('delete failed!')</script>");
            }
        }
    }
}