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
        }

            T_book book = new T_book();
        protected void Button1_Click(object sender, EventArgs e)
        {
             book.Id = 0;
             book.Name = TextBox2.Text.ToString().Trim();
             book.Price = TextBox3.Text.ToString().Trim();
             book.Category = TextBox4.Text.ToString().Trim();
            book.Author = writeTextBox.Text.Trim();
             book.Press = TextBox5.Text.ToString().Trim();
            book.TotalAmount = TextBox1.Text.ToString().Trim();
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
                        bool result = T_bookBLL.Add(book);
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

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexLibrarian.aspx");
        }
    }
}