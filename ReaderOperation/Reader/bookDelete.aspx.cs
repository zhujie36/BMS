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
    public partial class bookDelete : System.Web.UI.Page
    {
        private static T_book tbook;
        private static string isbn;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (all.ID == null)
            {
                Response.Redirect("login.aspx");
            }
            if (!IsPostBack)
            {
                if (Request.QueryString["isbn"] != null)
                {
                    isbn = Request.QueryString["isbn"].ToString().Trim();
                    tbook = T_bookBLL.GetDataByID(isbn);
                    TextBox2.Text = tbook.Name; TextBox2.Enabled = false;
                    TextBox3.Text = tbook.Price; TextBox3.Enabled = false;
                    TextBox4.Text = tbook.YearOfPublication; TextBox4.Enabled = false;
                    TextBox5.Text = tbook.Press; TextBox5.Enabled = false;
                    TextBox6.Text = tbook.TotalAmount; TextBox6.Enabled = false;
                    TextBox7.Text = tbook.LoanAmount; TextBox7.Enabled = false;
                    TextBox8.Text = tbook.Location; TextBox8.Enabled = false;
                    writeTextBox.Text = tbook.Author; writeTextBox.Enabled = false;
                    Image1.ImageUrl = tbook.Pic;

                    LBook.DataSource = T_bookIDBLL.GetIDByISBN(isbn);
                    LBook.DataBind();
                }
                else
                {
                    Response.Redirect("bookDeleteList.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = TextBox1.Text.Trim();
            string[] booklist = s.Split(',');
            bool result = true;
            for (int i = 0; i < booklist.Length && booklist[i] != ""; i++)
            {
                if (!T_bookIDBLL.Delete(T_bookIDBLL.GetDataByID(booklist[i])))
                {
                    result = false;
                    break;
                }
            }
            if (result)
            {
                Response.Write("<script>alert('delete succeed!')</script>");
                Response.Write("<script>javascript:location.href='bookDeleteList.aspx?'</script>");
            }
            else
            {
                Response.Write("<script>alert('delete failed!')</script>");
            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookDeleteList.aspx");
        }

    }
}