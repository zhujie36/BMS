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
            
            if(!IsPostBack)
            {
                TextBox3.Text = "";
                if (all.ID == null)
                {
                    Response.Redirect("login.aspx");
                }
            }
            Panel1.Visible = false;
            Panel2.Visible = false;
            
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            string reader_id = TextBox1.Text.Trim();
            string book_id = TextBox2.Text.Trim();
            string isbn = T_bookIDBLL.GetISBNByID(book_id);
            string book2 = TextBox3.Text.Trim();
            if (book2 == "" || book2 == null)
            {
                ///判断是否已被借出
                T_bookID BID = T_bookIDBLL.GetDataByID(book_id);
                int flag1 = BID.InLibrarain;
                if(flag1 == 0)
                    return;
               
               

                if (isbn == null)
                {
                    //Response.Write("<script>alert('cannot get this book information!')</script>");
                    Panel2.Visible = true;
                    Label4.Text = "cannot get the book information!";
                }
                else
                {
                    T_book book = T_bookBLL.GetDataByID(isbn);
                    //int num = int.Parse(TextBox3.Text.Trim());


                    ///该书是否可借
                    if (Convert.ToInt32(book.IsCanLend) == 0)
                    {
                        //Response.Write("<script>alert('The book can not lend!')</script>");
                        Panel2.Visible = true;
                        Label4.Text = "The book can not lend!";
                        return;
                    }
                    

                    
                    bool judge_borrow = T_ReaderBLL.judgeBorrow(reader_id);
                    if (judge_borrow == false)
                    {
                        //Response.Write("<script>alert('You have already borrowed 2 books or you have books exceed 30 days time,so you can not borrow books now!Please pay the fine or return your books!')</script>");
                        Panel2.Visible = true;
                        Label4.Text = "You have already borrowed 2 books or you have books exceed 30 days time,so you can not borrow books now!Please pay the fine or return your books!";
                        return;
                    }

                    bool result = BorrowListBLL.borrowBook(reader_id, book_id);
                    if (!result)
                    {
                        Panel2.Visible = true;
                        Label4.Text = "The both book borrow failed!";
                    }
                    else
                    {
                        //Response.Write("<script>alert('Borrow succeed!')</script>");
                        Panel2.Visible = true;
                        Label4.Text = "Borrow succeed!";
                    }
                        /*
                        int loan = 1 + int.Parse(book.LoanAmount);
                        bool result1 = T_bookBLL.setLoanAmount(isbn, loan);

                        ///插入借阅记录
                        DateTime now = DateTime.Now;
                        BorrowList borlist = new BorrowList(book_id, reader_id, book.Name, now, book.Pic, "1");
                        bool result2 = BorrowListBLL.Add(borlist);


                        ///修改读者所借图书量
                        int n = T_ReaderBLL.GetDataByID(reader_id).R_booknumber;
                        bool result3 = T_ReaderBLL.setBookNumber(reader_id, n + 1);

                        if (result1 == true && result2 == true && result3 == true)
                            Response.Write("<script>alert('Borrow succeed!')</script>");
                        else
                            Response.Write("<script>alert('Borrow failed!')</script>");
                        */

                    }
                }
            else
            {
                ///判断是否已被借出
                /*int flag1 = T_bookIDBLL.GetInLibrarainByID(book_id);
                if (flag1 == 0)
                {
                    Label4.Text = "The first book has already be lent!";
                    return;
                }*/

                ///判断是否已被借出
                int flag2 = T_bookIDBLL.GetInLibrarainByID(book2);
                if (flag2 == 0)
                {
                    Label4.Text = "The second book has already be lent!";
                    return;
                }

                string isbn2 = T_bookIDBLL.GetISBNByID(book2);
                /* if (isbn == null && isbn2 != null)
                 {
                     //Response.Write("<script>alert('cannot get book information!')</script>");
                     Panel2.Visible = true;
                     Label4.Text = "cannot get the first book information!";
                     return;
                 }
                 else if(isbn2 == null && isbn != null)
                 {
                     Panel2.Visible = true;
                     Label4.Text = "cannot get the second book information!";
                     return;
                 }
                 else */
                if (isbn2 == null)
                {
                    Panel2.Visible = true;
                    Label4.Text = "cannot get the second book information!";
                    return;
                }
                else
                {
                    //T_book book = T_bookBLL.GetDataByID(isbn);
                    T_book b2 = T_bookBLL.GetDataByID(isbn2);
                    ///该书是否可借
                    /*if (Convert.ToInt32(book.IsCanLend) == 0 && Convert.ToInt32(b2.IsCanLend) != 0)
                    {
                        //Response.Write("<script>alert('The book can not lend!')</script>");
                        Panel2.Visible = true;
                        Label4.Text = "The first book can not lend!";
                        return;
                    }
                    else if (Convert.ToInt32(book.IsCanLend) != 0 && Convert.ToInt32(b2.IsCanLend) == 0)
                    {
                        //Response.Write("<script>alert('The book can not lend!')</script>");
                        Panel2.Visible = true;
                        Label4.Text = "The second book can not lend!";
                        return;
                    }
                    elsr*/
                    if (Convert.ToInt32(b2.IsCanLend) == 0)
                    {
                        //Response.Write("<script>alert('The book can not lend!')</script>");
                        Panel2.Visible = true;
                        Label4.Text = "The both second can not lend!";
                        return;
                    }
                    //bool r1 = BorrowListBLL.borrowBook(reader_id, book_id);
                    bool r2 = BorrowListBLL.borrowBook(reader_id, book2);


                    /* if (!r1 && r2)
                     {
                         Panel2.Visible = true;
                         Label4.Text = "The first book borrow failed!";
                     }
                     else if (r1 && !r2)
                     {
                         Panel2.Visible = true;
                         Label4.Text = "The second book borrow failed!";
                     }
                     else */
                    if (!r2)
                    {
                        Panel2.Visible = true;
                        Label4.Text = "The both book borrow failed!";
                    }
                    else
                    {
                        Response.Write("<script>alert('Borrow succeed!')</script>");
                    }
                }
            }
        }


            

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexLibrarian.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if(Panel1.Visible == false)
            {
                string reader_id = TextBox1.Text.Trim();
                if(!T_ReaderBLL.judgeBorrow(reader_id))
                {
                    Label4.Text = "You have already borrowed 2 books or you have books exceed 30 days time,so you can not borrow books now!Please pay the fine or return your books!";
                    Panel2.Visible = true;
                }
                else if(T_ReaderBLL.getBookNumber(reader_id) == 1)
                {
                    Label4.Text = "You only can borrow a book!";
                    Panel2.Visible = true;
                }
                else
                {
                    Panel1.Visible = true;
                } 
            }
            else
            {
                Panel2.Visible = false;
                TextBox3.Text = "";
            }
        }
    }
}