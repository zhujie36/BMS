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
        string isbn;
        int num;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(all.ID == null)
            {
                Response.Redirect("login.aspx");
            }
        }


        
        protected void Button3_Click(object sender, EventArgs e)
        {
            isbn = TextBox8.Text.Trim();
            BookInfo bookInfo;
            string json;
            if(T_bookBLL.GetDataByID(isbn) != null)
            {
                Response.Write("<script>alert('books with this ISBN has benn regitered')</script>");
                T_book temp = T_bookBLL.GetDataByID(isbn);
                TextBox2.Text = temp.Name;TextBox2.Enabled = false;
                TextBox3.Text = temp.Price; TextBox3.Enabled = false;
                TextBox4.Text = temp.YearOfPublication; TextBox4.Enabled = false;
                writeTextBox.Text = temp.Author; writeTextBox.Enabled = false;
                TextBox5.Text = temp.Press; TextBox5.Enabled = false;
                for(int i=0; i<DropDownList1.Items.Count; i++)
                {
                    if(DropDownList1.Items[i].Value == temp.IsCanLend)
                    {
                        DropDownList1.Items[i].Selected = true;
                    }
                }
                DropDownList1.Enabled = false;
                TextBox6.Text = temp.Location; TextBox6.Enabled = false;
                TextBox1.Text = temp.Brief; TextBox1.Enabled = false;
                Image1.ImageUrl = temp.Pic; 
            }
            else
            {
                TextBox2.Enabled = true;
                TextBox3.Enabled = true;
                TextBox4.Enabled = true;
                writeTextBox.Enabled = true;
                TextBox5.Enabled = true;
                DropDownList1.Enabled = true;
                TextBox6.Enabled = true;
                TextBox1.Enabled = true;
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
                        }
                        TextBox3.Text = s;
                    }
                }
                else
                {
                    Response.Write("<script>alert('cannot get book's iformation,please enter manually!!')</script>");
                    // MessageBox.Show("获取失败");
                }
            }
            
        }


        T_book book = new T_book();
        T_bookID bi = new T_bookID();
        protected void Button1_Click(object sender, EventArgs e)
        {

            if(T_bookIDBLL.GetDataByID(bi.Book_id) != null)
            {
                Response.Write("<script>alert('book's ID has been registered')</script>");
                
            }
            else
            {
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
                book.TotalAmount = TextBox7.Text.Trim();
                num = int.Parse(book.TotalAmount);
                bool result = T_bookIDBLL.Add(book);

                if (result)
                {
                   // Response.Write("<script>alert('add succeed!')</script>");
                    Response.Redirect("bookID.aspx?isbn="+ bi.iSBN + "&num="+num);
                }
                else
                    Response.Write("<script>alert('add failed!')</script>");
            }
           
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexLibrarian.aspx");
        }
        BookInfo bookInfo;
        
    }
}