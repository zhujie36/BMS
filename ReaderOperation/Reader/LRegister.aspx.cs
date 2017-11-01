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
    public partial class LRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (all.ID == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        T_Librarian  book = new T_Librarian();
        protected void Button1_Click(object sender, EventArgs e)
        {
            book.L_name = TextBox2.Text.ToString().Trim();
            book.L_pwd = TextBox3.Text.ToString().Trim();

            string name = book.L_name;
            if (T_LibrarianBLL.GetDataByName(name) != null)
            {
                Response.Write("<script>alert('User name has been registered')</script>");
            }
            else
            {
                bool result = T_LibrarianBLL.Add(book);
                if (result)
                {
                    Response.Redirect("IndexLibrarian.aspx");
                }
                else
                    Response.Write("<script>alert('register failed!')</script>");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexLibrarian.aspx");
        }
    }
}