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

        T_book book = new T_book();
        T_bookID bi = new T_bookID();
        protected void Button1_Click(object sender, EventArgs e)
        {
            bi.Book_id = TextBox7.Text.Trim();
            bi.iSBN = TextBox8.Text.Trim();
            book.iSBN = TextBox8.Text.Trim();
            book.Name = TextBox2.Text.ToString().Trim();
             book.Price = TextBox3.Text.ToString().Trim();
             book.Category = TextBox4.Text.ToString().Trim();
            book.Author = writeTextBox.Text.Trim();
             book.Press = TextBox5.Text.ToString().Trim();
            book.IsCanLend = DropDownList1.SelectedValue;
            book.Location = TextBox6.Text.ToString().Trim();
           
            bool fileIsValid = false;
            if (FileUpload1.HasFile)
            {
                string fileExtension =
                System.IO.Path.GetExtension(this.FileUpload1.FileName).ToLower();
                string[] restrictExtension = { ".gif", ".jpg", ".bmp", ".png" };
                for (int i = 0; i < restrictExtension.Length; i++)
                {
                    if (fileExtension == restrictExtension[i])
                    {
                        fileIsValid = true;
                    }
                }
                if (fileIsValid == true)
                {
                    try
                    {
                        book.Pic = "./images/" + FileUpload1.FileName;
                        FileUpload1.SaveAs(Server.MapPath("./images/") + FileUpload1.FileName);
                        bool result = T_bookIDBLL.Add(bi,book);
                        if (result)
                        {
                            Response.Write("<script>alert('add succeed!')</script>");
                            Response.Redirect("IndexLibrarian.aspx");
                        }
                        else
                            Response.Write("<script>alert('add failed!')</script>");
                    }
                    catch
                    {
                        Response.Write("<script>alert('file upload failed!')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('file upload failed!')</script>");
                }
            } 
            else
            {
                bool result = T_bookIDBLL.Add(bi, book);
                if (result)
                {
                    Response.Write("<script>alert('add succeed!')</script>");
                    Response.Redirect("IndexLibrarian.aspx");
                }
                else
                    Response.Write("<script>alert('add failed!')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexLibrarian.aspx");
        }


    }
}