using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;
namespace Reader
{/*
    public partial class bookBorrow1 : System.Web.UI.Page
    {
       
        private static T_book tbook;
        private int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["ID"] != null)
                {
                    id = int.Parse(Request.QueryString["ID"].ToString().Trim());
                    tbook = T_bookBLL.GetDataByID(id);
                    TextBox1.Text = id.ToString();
                    TextBox1.Enabled = false;
                    TextBox2.Text = tbook.Name; TextBox2.Enabled = false;
                    TextBox3.Text = tbook.Price; TextBox3.Enabled = false;
                    TextBox4.Text = tbook.Category; TextBox4.Enabled = false;
                    TextBox5.Text = tbook.Press; TextBox5.Enabled = false;
                    //TextBox6.Text = tbook.IsLend.ToString(); TextBox6.Enabled = false;

                }
                else
                {
                    Response.Redirect("bookList.aspx");
                }
            }
            //if (tbook.IsLend == 0)
            {
                Label7.Text = "该书全部已被借出，先无法借阅！";
                Button1.Enabled = false;
            }
            //else
            {
                Label7.Text = "是否确认借阅一下图书？";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int user_id = Convert.ToInt32(all.ID); 
            int book_id = id;  
            T_book book = T_bookBLL.GetDataByID(book_id);


            bool result1 = T_bookBLL.setIsLend(book_id, 0);   



            ///插入借阅记录
            DateTime now = DateTime.Now;
            BorrowList borlist = new BorrowList(book_id, user_id, book.Name, now,book.Pic);
            bool result2 = BorrowListBLL.Add(borlist);



            if (result1)
            {
                if (result2)
                {
                    Response.Redirect("bookFind.aspx");


                }
                else
                    Response.Write("<script>alert('借阅失败！')</script>");
            }
            else
                Response.Write("<script>alert('借阅失败！')</script>");


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookFind.aspx");
        }
    }
    */
}