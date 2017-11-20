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
    public partial class bookID : System.Web.UI.Page
    {
        string isbn;
        int num;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (all.ID == null)
            {
                Response.Redirect("login.aspx");
            }
            if (Request.QueryString["isbn"]!=null && Request.QueryString["num"] != null)
            {
                isbn = Request.QueryString["isbn"].Trim();
                num = int.Parse(Request.QueryString["num"].Trim());
                List<T_bookID> booklist = new List<T_bookID>();
                booklist = T_bookIDBLL.GetIDByISBN(isbn);
                booklist.RemoveRange(num, booklist.Count() - num);

                LBook.DataSource = booklist;
                LBook.DataBind();

            }
            else
            {
                Response.Write("<script>alert('cannot get information about book added!')</script>");
                Response.Write("<script>javascript:location.href='bookAdd.aspx?'</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>javascript:location.href='bookAdd.aspx?'</script>");
        }
    }
}