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

            if (!IsPostBack)
            {
                TextBox3.Text = "";
                if (all.ID == null)
                {
                    Response.Redirect("login.aspx");
                }
 Panel1.Visible = false;
            Panel2.Visible = false;
            }
           
            
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            string reader_id = TextBox1.Text.Trim();
            string book_id = TextBox2.Text.Trim();
            string isbn = T_bookIDBLL.GetISBNByID(book_id);
            string book2 = TextBox3.Text.Trim();

            if(reader_id != null)
            {

                T_Reader reader = T_ReaderBLL.GetDataByID(reader_id);
                if(reader == null)
                {
                    Panel2.Visible = true;
                    Label4.Text = "Cannot get the student's information!";
                    return;
                }
            }



            if (book2 == "" || book2 == null)
            {
                ///判断是否有这本书
                T_bookID BID = T_bookIDBLL.GetDataByID(book_id);
                if(BID == null)
                {
                    Panel2.Visible = true;
                    Label4.Text = "Cannot get the book's information!";
                    return;
                }

                
                ///判断这本书是否已经借出
                int flag1 = BID.InLibrarain;
                if(flag1 == 0)
                {
                    Panel2.Visible = true;
                    Label4.Text = "The book has already be lent!";
                    return;
                }
                    
               
               

                if (isbn == null)
                {

                    //Response.Write("<script>alert('cannot get this book information!')</script>");
                    Panel2.Visible = true;
                    Label4.Text = "Cannot get the book's information!";
                    return;
                }
                
                
                    T_book book = T_bookBLL.GetDataByID(isbn);
                    //int num = int.Parse(TextBox3.Text.Trim());


                    ///该书是否可借
                    if (Convert.ToInt32(book.IsCanLend) == 0)
                    {
                        //Response.Write("<script>alert('The book can not lend!')</script>");
                        Panel2.Visible = true;
                        Label4.Text = "The book can not lend!You can only read it inside the library!";
                        return;
                    }
                    

                    
                    bool judge_borrow = T_ReaderBLL.judgeBorrow(reader_id);
                    if (judge_borrow == false)
                    {
                        //Response.Write("<script>alert('You have already borrowed 2 books or you have books exceed 30 days time,so you can not borrow books now!Please pay the fine or return your books!')</script>");
                        Panel2.Visible = true;
                        Label4.Text = "You have already borrowed 2 books or you have books exceed 30 days time,so you can not borrow books now!Please pay the fine and return your books!";
                        return;
                    }

                    bool result = BorrowListBLL.borrowBook(reader_id, book_id);

                    
                    
                    if (!result)
                    {
                        Panel2.Visible = true;
                        Label4.Text = "The book borrow failed!";
                    }
                    else
                    {
                        //Response.Write("<script>alert('Borrow succeed!')</script>");
                        Panel2.Visible = true;
                        Label4.Text = "Borrow succeed!";
                    }
                     
                    /* int loan = 1 + int.Parse(book.LoanAmount);
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

                
             }//借一本书
            else
            {

                ///判断是否有两本书
                T_bookID BID1 = T_bookIDBLL.GetDataByID(book_id);
                if (BID1 == null)
                {
                    Panel2.Visible = true;
                    Label4.Text = "Cannot get the first book's information!";
                    return;
                }


                T_bookID BID2 = T_bookIDBLL.GetDataByID(book2);
                if (BID2 == null)
                {
                    Panel2.Visible = true;
                    Label4.Text = "Cannot get the second book's information!";
                    return;
                }

                if (BID1 == BID2)
                {
                    Panel2.Visible = true;
                    Label4.Text = "two book's ID is similar!";
                    return;
                }


                ///判断是否已被借出
                int flag1 = T_bookIDBLL.GetInLibrarainByID(book_id);
                if (flag1 == 0)
                {
                    Panel2.Visible = true;
                    Label4.Text = "The first book has already be lent!";
                    return;
                }

                ///判断是否已被借出
                int flag2 = T_bookIDBLL.GetInLibrarainByID(book2);
                if (flag2 == 0)
                {
                    Panel2.Visible = true;
                    Label4.Text = "The second book has already be lent!";
                    return;
                }

                string isbn2 = T_bookIDBLL.GetISBNByID(book2);
                if (isbn == null && isbn2 != null)
                 {
                     //Response.Write("<script>alert('cannot get book information!')</script>");
                     Panel2.Visible = true;
                     Label4.Text = "Cannot get the first book's information!";
                     return;
                 }
                 else if(isbn2 == null && isbn != null)
                 {
                     Panel2.Visible = true;
                     Label4.Text = "Cannot get the second book's information!";
                     return;
                 }
                 else if (isbn2 == null && isbn == null)
                {
                    Panel2.Visible = true;
                    Label4.Text = "Cannot get the two books' information!";
                    return;
                }
                else
                {
                    T_book book = T_bookBLL.GetDataByID(isbn);
                    T_book b2 = T_bookBLL.GetDataByID(isbn2);
                    ///该书是否可借
                    if (Convert.ToInt32(book.IsCanLend) == 0 && Convert.ToInt32(b2.IsCanLend) != 0)
                    {
                        //Response.Write("<script>alert('The book can not lend!')</script>");
                        Panel2.Visible = true;
                        Label4.Text = "The first book can not lend!You can only read it inside the library!";
                        return;
                    }
                    else if (Convert.ToInt32(book.IsCanLend) != 0 && Convert.ToInt32(b2.IsCanLend) == 0)
                    {
                        //Response.Write("<script>alert('The book can not lend!')</script>");
                        Panel2.Visible = true;
                        Label4.Text = "The second book can not lend!You can only read it inside the library!";
                        return;
                    }
                    else if (Convert.ToInt32(book.IsCanLend) == 0 && Convert.ToInt32(b2.IsCanLend) == 0)
                    {
                        //Response.Write("<script>alert('The book can not lend!')</script>");
                        Panel2.Visible = true;
                        Label4.Text = "The two books both can not lend!You can only read them inside the library!";
                        return;
                    }
                   bool r1 = BorrowListBLL.borrowBook(reader_id, book_id);
                    bool r2 = BorrowListBLL.borrowBook(reader_id, book2);


                     if (!r1 && r2)
                     {
                         Panel2.Visible = true;
                         Label4.Text = "The first book borrow failed!";
                     }
                     else if (r1 && !r2)
                     {
                         Panel2.Visible = true;
                         Label4.Text = "The second book borrow failed!";
                     }
                     else if (!r2 && !r1)
                    {
                        Panel2.Visible = true;
                        Label4.Text = "The two books borrow failed!";
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

       
        protected void Button3_Click1(object sender, EventArgs e)
        {
                string reader_id = TextBox1.Text.Trim();
                string book = TextBox2.Text.Trim();
                if (TextBox1.Text.Trim() == null || TextBox1.Text.Trim() == "")
                {
                    Label4.Text = "Please input stu_id";
                    Panel2.Visible = true;
                }
                else if(T_ReaderBLL.GetDataByID(reader_id) == null)
                {
                    Label4.Text = "this student hasn't registered";
                    Panel2.Visible = true;
                }
                else if(TextBox2.Text.Trim() == null || TextBox2.Text.Trim() == "")
                {
                    Label4.Text = "Please input the first book";
                    Panel2.Visible = true;
                }
                else if(T_bookIDBLL.GetDataByID(book) == null)
                {
                    Label4.Text = "this book hasn't registered";
                    Panel2.Visible = true;
                }
                else
                {
                    if (!T_ReaderBLL.judgeBorrow(reader_id))
                    {
                        Label4.Text = "You have already borrowed 2 books or you have books exceed 30 days time,so you can not borrow books now!Please pay the fine or return your books!";
                        Panel2.Visible = true;
                    }
                    else if (T_ReaderBLL.getBookNumber(reader_id) == 1)
                    {
                        Label4.Text = "You only can borrow a book!";
                        Panel2.Visible = true;
                    }
                    else
                    {
                        Panel1.Visible = true;
                    }
                }
                
            }
        

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            TextBox3.Text = null;
        }
    }
}