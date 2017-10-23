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
    public partial class IndexLibrarian : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            //Response.Redirect("bookAdd.aspx？user=" + User+"&ID="+Id);
            Response.Redirect("bookAdd.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("bookList.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Ledit.aspx");
        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Borrow.aspx");
        }

        protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("LRegister.aspx");
        }

        protected void ImageButton3_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AllBorrowList.aspx");
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("writeOff.aspx");
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool result = T_LibrarianBLL.Delete(all.ID);
            if(result == true)
            {
                all.ID = null;
                all.NAME = null;
                all.LIB = null;
                all.READER = null;
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.Write("<script>alert('wirte off failed！')</script>");
                Panel1.Visible = false;
            }
        }
    }
}