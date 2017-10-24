﻿using System;
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
        int num1,num2;
        protected void Page_Load(object sender, EventArgs e)
        {
           
                if (Request.QueryString["BorrowID"] != null)
                {
                    borlist = BorrowListBLL.GetDataByBorrowID(Convert.ToInt32(Request.QueryString["BorrowID"]));
                    Label_BorrowID.Text = borlist.BorrowID.ToString();
                    Label_ReaderID.Text = borlist.Reader.Trim();
                    Label_BookID.Text = borlist.BookID.ToString();
                    Label_BookName.Text = borlist.BookName;
                    LabelStartTime.Text = borlist.StartTime.ToString();
                    number.Text = borlist.Num;
                     num1 = int.Parse(number.Text);
                if (!IsPostBack)
                {
                    if (num1 <= 1)
                    {
                        Panel1.Visible = false;
                        num2 = num1;
                    }
                    else
                    {
                        TextBox1.Text = number.Text;
                        num2 = int.Parse(number.Text.Trim());
                    }
                        
                }
            }
            
         }


        protected void Return_Click(object sender, EventArgs e)
        {
            ///获得借阅编号
            int id = Convert.ToInt32(Request.QueryString["BorrowID"]);


            ///获得借阅读书的编号
            int bookid = Convert.ToInt32(Request.QueryString["BookID"]);
            T_book book = T_bookBLL.GetDataByID(bookid);
            int loan = int.Parse(book.LoanAmount);


            ///获得现在距离借阅时的时间
            DateTime now = DateTime.Now;
            DateTime borrow = BorrowListBLL.GetDataByBorrowID(id).StartTime;
            System.TimeSpan time = now - borrow;
            double days = time.TotalDays;

            bool result1 = false, result2 = false;
            if (num2 > num1)
            {
                Response.Write("<script>alert('请选择正确的还书数量!')</script>");
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
                        Response.Write("<script>alert('借阅时间超过30天!')</script>");
                    else
                        Response.Redirect("AllBorrowList.aspx");
                }
                else
                {
                    Response.Write("<script>alert('归还失败book！')</script>");
                }
            }
            else
                Response.Write("<script>alert('归还失败Borrow！')</script>");
        }
    }
}