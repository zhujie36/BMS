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
    public partial class bookUpdate : System.Web.UI.Page
    {
        private static T_book tbook;
        private static int id;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (all.ID == null)
            {
                Response.Redirect("login.aspx");
            }
            if (!IsPostBack)
            {
                if (Request.QueryString["ID"] != null)
                {
                    string id = Request.QueryString["ID"].ToString().Trim();
                    tbook = T_bookBLL.GetDataByID(id);
                    TextBox1.Text = id.ToString();
                    TextBox1.Enabled = false;
                    TextBox2.Text = tbook.Name;
                    TextBox3.Text = tbook.Price;
                    TextBox4.Text = tbook.YearOfPublication;
                    TextBox5.Text = tbook.Press;
                    TextBox6.Text = tbook.TotalAmount; TextBox6.Enabled = false;
                    TextBox7.Text = tbook.Location;
                    TextBox8.Text = tbook.LoanAmount;TextBox8.Enabled = false;
                    TextBox9.Text = tbook.Brief;
                    for (int i = 0; i < DropDownList1.Items.Count; i++)
                    {
                        if (DropDownList1.Items[i].Value.Trim() == tbook.IsCanLend)
                        {
                            DropDownList1.SelectedIndex = i;
                            break;
                        }
                    }
                    writeTextBox.Text = tbook.Author;
                    RangeValidator1.MaximumValue = tbook.TotalAmount;
                    Image1.ImageUrl = tbook.Pic;

                }
                else
                {
                    Response.Redirect("bookList.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            tbook.Name = TextBox2.Text.Trim();
            tbook.Price = TextBox3.Text.Trim();
            tbook.YearOfPublication = TextBox4.Text.Trim();
            tbook.Press = TextBox5.Text.Trim();
            tbook.TotalAmount = TextBox6.Text.Trim();
            tbook.LoanAmount = TextBox8.Text.Trim();
            tbook.IsCanLend = DropDownList1.SelectedValue.Trim();
            tbook.Author = writeTextBox.Text.Trim();
            tbook.Brief = TextBox9.Text.Trim();
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
                        tbook.Pic = "./images/" + FileUpload1.FileName;
                        FileUpload1.SaveAs(Server.MapPath("./images/") + FileUpload1.FileName);
                        if (T_bookBLL.Update(tbook))
                        {
                            Response.Write("<script>alert('update succeed!')</script>");
                            Response.Redirect("bookList.aspx");
                        }
                        else
                            Response.Write("<script>alert('update failed!')</script>");
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
            else if(tbook.Pic != null)
            {
                if (T_bookBLL.Update(tbook))
                {
                    Response.Write("<script>alert('update succeed!')</script>");
                    Response.Redirect("bookList.aspx");
                }
                else
                    Response.Write("<script>alert('update failed!')</script>");
            }
            else
            {
                Response.Write("<script>alert('please select image!')</script>");
            }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookList.aspx");
        }
    }
}