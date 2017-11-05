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
    public partial class bookDelete : System.Web.UI.Page
    {
        private static T_book tbook;
        private static string id;
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
                    id = Request.QueryString["ID"].ToString().Trim();
                    tbook = T_bookBLL.GetDataByID(id);
                    TextBox1.Text = id.ToString();
                    TextBox1.Enabled = false;
                    TextBox2.Text = tbook.Name; TextBox2.Enabled = false;
                    TextBox3.Text = tbook.Price; TextBox3.Enabled = false;
                    TextBox4.Text = tbook.Category; TextBox4.Enabled = false;
                    TextBox5.Text = tbook.Press; TextBox5.Enabled = false;
                    TextBox6.Text = tbook.TotalAmount; TextBox6.Enabled = false;
                    TextBox7.Text = tbook.LoanAmount; TextBox7.Enabled = false;
                    TextBox8.Text = tbook.Location; TextBox8.Enabled = false;
                    writerLabel.Text = tbook.Author; writerLabel.Enabled = false;
                    Image1.ImageUrl = tbook.Pic;
                }
                else
                {
                    Response.Redirect("bookDeleteList.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(int.Parse(tbook.LoanAmount) != 0)
            {
                Response.Write("<script>alert('There are still books which are not returned,so can not delete the book!')</script>");
            }
            else
            {
                bool result = T_bookBLL.Delete(id);
                if (result)
                    Response.Redirect("bookDeleteList.aspx");
                else
                    Response.Write("<script>alert('Delete false!')</script>");
            }
            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookDeleteList.aspx");
        }

    }
}