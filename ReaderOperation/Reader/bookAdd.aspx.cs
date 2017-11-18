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
    public partial class bookAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(all.ID == null)
            {
                Response.Redirect("login.aspx");
            }
        }


        
        protected void Button3_Click(object sender, EventArgs e)
        {
            string isbn = TextBox8.Text.Trim();
            BookInfo bookInfo;
            string json;
            //获取信息
            BookApi.getInfo(isbn, out bookInfo, out json);
            if (bookInfo != null)
            {
                if (bookInfo.msg != null)
                {
                    //MessageBox.Show("获取失败： " + bookInfo.msg);
                    Response.Write("<script>alert('Failed to get： " + bookInfo.msg + ", please enter manually!')</script>");
                    return;
                }
                if (bookInfo.title != null)
                {
                    TextBox2.Text = bookInfo.title;
                }
                if (bookInfo.author != null)
                {
                    for (int i = 0; i < bookInfo.author.Length; i++)
                    {
                        writeTextBox.Text = bookInfo.author[i] + ", ";
                    }
                    writeTextBox.Text = writeTextBox.Text.Substring(0, writeTextBox.Text.Length - 1);
                }
                if (bookInfo.publisher != null)
                {
                    TextBox5.Text = bookInfo.publisher;
                }
                if (bookInfo.image != null)
                {
                    //获取封面图片
                    Image1.ImageUrl = bookInfo.image;
                }
                if (bookInfo.pubdate != null)
                {
                    TextBox4.Text = bookInfo.pubdate;
                }
                if (bookInfo.summary != null)
                {
                    TextBox1.Text = bookInfo.summary;
                }
                if (bookInfo.pages != null)
                {
                    // pagesTxt.Text = bookInfo.pages;
                }
                if (bookInfo.price != null)
                {
                    string s = bookInfo.price.Trim();
                    if(s.Contains("元"))
                    {

                        s = s.Remove(s.Length - 1, 1);
                        Label11.Text = s;
                    }
                    TextBox3.Text = s;
                }
            }
            else
            {
                Response.Write("<script>alert('file upload failed!')</script>");
                // MessageBox.Show("获取失败");
            }
        }


        T_book book = new T_book();
        T_bookID bi = new T_bookID();
        protected void Button1_Click(object sender, EventArgs e)
        {

            bi.Book_id = TextBox7.Text.Trim();
            if(T_bookIDBLL.GetDataByID(bi.Book_id) != null)
            {
                Response.Write("<script>alert('this book's id has been registered!')</script>");
                return;
            }
            bi.iSBN = TextBox8.Text.Trim();

            book.iSBN = TextBox8.Text.Trim();
            
            book.Name = TextBox2.Text.ToString().Trim();
             book.Price = TextBox3.Text.ToString().Trim();
             book.YearOfPublication = TextBox4.Text.ToString().Trim();
            book.Author = writeTextBox.Text.Trim();
             book.Press = TextBox5.Text.ToString().Trim();
            book.IsCanLend = DropDownList1.SelectedValue;
            book.Location = TextBox6.Text.ToString().Trim();
            book.Brief = TextBox1.Text.Trim();
            book.Pic = Image1.ImageUrl;
                bool result = T_bookIDBLL.Add(bi, book);
                
            Label11.Text = book.Name + ", " + book.Brief;
                if (result)
                {
                    Response.Write("<script>alert('add succeed!')</script>");
                    Response.Redirect("IndexLibrarian.aspx");
                }
                else
                    Response.Write("<script>alert('add failed!')</script>");
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexLibrarian.aspx");
        }
        BookInfo bookInfo;
        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {
            string isbn = TextBox8.Text.Trim();
            
            string json;
            //获取信息
            BookApi.getInfo(isbn, out bookInfo, out json);
            if (bookInfo != null)
            {
                if (bookInfo.msg != null)
                {
                    //MessageBox.Show("获取失败： " + bookInfo.msg);
                    Response.Write("<script>alert('Failed to get： " + bookInfo.msg + ", please enter manually!')</script>");
                    return;
                }
                if (bookInfo.title != null)
                {
                    TextBox2.Text = bookInfo.title;
                }
                if (bookInfo.author != null)
                {
                    for (int i = 0; i < bookInfo.author.Length; i++)
                    {
                        writeTextBox.Text = bookInfo.author[i] + ", ";
                    }
                    writeTextBox.Text = writeTextBox.Text.Substring(0, writeTextBox.Text.Length - 1);
                }
                if (bookInfo.publisher != null)
                {
                    TextBox5.Text = bookInfo.publisher;
                }
                if (bookInfo.image != null)
                {
                    //获取封面图片
                    Image1.ImageUrl = bookInfo.image;
                }
                if (bookInfo.pubdate != null)
                {
                    TextBox4.Text = bookInfo.pubdate;
                }
                if (bookInfo.summary != null)
                {
                    TextBox1.Text = bookInfo.summary;
                }
                if (bookInfo.pages != null)
                {
                    // pagesTxt.Text = bookInfo.pages;
                }
                if (bookInfo.price != null)
                {
                    TextBox3.Text = bookInfo.price;
                }
            }
            else
            {
                Response.Write("<script>alert('file upload failed!')</script>");
                // MessageBox.Show("获取失败");
            }
        }
    }
}