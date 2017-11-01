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
    public partial class Borrow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (all.ID == null)
            {
                Response.Redirect("login.aspx");
            }
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text.Trim();
            //T_Reader reader = T_ReaderBLL.GetDataByName(name);
            //int id = int.Parse(reader.R_id);
            int book_id = int.Parse(TextBox2.Text.Trim());
            T_book book = T_bookBLL.GetDataByID(book_id);
            int num = int.Parse(TextBox3.Text.Trim());
            
            int loan = num + int.Parse(book.LoanAmount);
            bool result1 = T_bookBLL.setLoanAmount(book_id, loan);
            
                ///插入借阅记录
                DateTime now = DateTime.Now;
                BorrowList borlist = new BorrowList(book_id, name, book.Name, now, book.Pic, TextBox3.Text.Trim());
                bool result2 = BorrowListBLL.Add(borlist);


                if (result1)
                {
                    if (result2)
                    {
                        Response.Redirect("IndexLibrarian.aspx");


                    }
                    else
                        Response.Write("<script>alert('Borrow failed！')</script>");
                }
                else
                    Response.Write("<script>alert('Borrow failed')</script>");
            
        }


            

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexLibrarian.aspx");
        }
    }
}