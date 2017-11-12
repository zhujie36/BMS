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
    public partial class RBookIntro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (all.ID == null)
            {
                Response.Redirect("login.aspx");
            }
            string isbn = Request.QueryString["id"].Trim();
            if(isbn == null)
            {
                Response.Redirect("bookFind.aspx");
            }
            T_book book = T_bookBLL.GetDataByID(isbn);
            if(book == null)
            {
                Response.Write("<script>alert('cannot get these books information!')</script>");
            }
            else
            {
                Label1.Text = book.Name;
                Label5.Text = book.Price;
                Image1.ImageUrl = book.Pic;
                Label2.Text = book.Author;
                Label3.Text = book.YearOfPublication;
                Label4.Text = book.Press;
                Label6.Text = book.TotalAmount;
                Label7.Text = book.LoanAmount;
                Label8.Text = book.IsCanLend;
                Label9.Text = book.Location;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookFind.aspx");
        }
    }
}