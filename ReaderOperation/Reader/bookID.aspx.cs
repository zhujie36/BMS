using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using GenCode128;
using System.Drawing;
using System.IO;
using BLL;
using Model;
using System.Collections.Generic;

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
                booklist.RemoveRange(num, booklist.Count - num);
                
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