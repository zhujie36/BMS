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
    public partial class Detail : System.Web.UI.Page
    {
        BorrowList borlist = new BorrowList();
        int num1,num2 = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (all.ID == null)
            {
                Response.Redirect("login.aspx");
            }

            if (Request.QueryString["BorrowID"] != null)
                {
                    borlist = BorrowListBLL.GetDataByBorrowID(Convert.ToInt32(Request.QueryString["BorrowID"]));
                    Label_BorrowID.Text = borlist.BorrowID.ToString();
                    Label_ReaderID.Text = borlist.Reader.Trim();
                    Label_BookID.Text = borlist.BookID.ToString();
                    Label_BookName.Text = borlist.BookName;
                    LabelStartTime.Text = borlist.StartTime.ToString();
                    number.Text = borlist.Num;
                    RangeValidator1.MaximumValue = borlist.Num;
                    num1 = int.Parse(number.Text);
                if (!IsPostBack)
                {
                    if (num1 <= 1)
                    {
                        Panel1.Visible = false;                       
                    }
                    else
                    {
                        TextBox1.Text = number.Text;
                    }
                        
                }
            }
            
         }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AllBorrowList.aspx?reader=" + borlist.Reader);
        }

        protected void Return_Click(object sender, EventArgs e)
        {
            ///获得借阅编号
            int id = Convert.ToInt32(Request.QueryString["BorrowID"]);


            ///获得借阅读书的编号
            int bookid = Convert.ToInt32(Request.QueryString["BookID"]);
            T_book book = T_bookBLL.GetDataByID(bookid);
            int loan = int.Parse(book.LoanAmount);


            if(num1 > 1)
            {
                num2 = int.Parse(TextBox1.Text.Trim());
            }

            ///获得现在距离借阅时的时间
            DateTime now = DateTime.Now;
            DateTime borrow = BorrowListBLL.GetDataByBorrowID(id).StartTime;
            System.TimeSpan time = now - borrow;
            double days = time.TotalDays;

            bool result1 = false, result2 = false;
            if (num2 > num1)
            {
                Response.Write("<script>alert('Please choose the correct number of book borrow!')</script>");
            }
            else if (num1 == 1 || (num1 - num2) == 0)
            {
                result1 = BorrowListBLL.DeleteByBorrowID(id);
                result2 = T_bookBLL.setLoanAmount(bookid, loan - num1);
            }
            else
            {
                result1 = BorrowListBLL.setNumber(id, num1 - num2);
                result2 = T_bookBLL.setLoanAmount(bookid, loan - num2);
            }


            if (result1)
            {
                if (result2)
                {
                    if (days > 30)
                    {
                        Response.Write("<script>alert('Time of borrowing the book is already more than 30 days!')</script>");
                        Response.Write("<script>javascript:location.href='AllBorrowList.aspx?reader=" + borlist.Reader+"'</script>");
                    }
                    else
                    {
                       
                        Response.Redirect("AllBorrowList.aspx?reader="+borlist.Reader);
                    }
                }
                else
                {
                    Response.Write("<script>alert('Return failed！')</script>");
                }
            }
            else
                Response.Write("<script>alert('Return failed！')</script>");
        }
    }
}