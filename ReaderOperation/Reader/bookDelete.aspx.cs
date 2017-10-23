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
        private static int id;
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
                    TextBox6.Text = tbook.TotalAmount; TextBox6.Enabled = false;
                    TextBox7.Text = tbook.LoanAmount; TextBox7.Enabled = false;
                    TextBox8.Text = tbook.Location; TextBox8.Enabled = false;
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
            if(int.Parse(tbook.LoanAmount) != 0)
            {
                Response.Write("<script>alert('还有未还图书，不能删除!')</script>");
            }
            else
            {
                bool result = T_bookBLL.Delete(id);
                if (result)
                    Response.Redirect("bookList.aspx");
                else
                    Response.Write("<script>alert('删除失败!')</script>");
            }
            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookList.aspx");
        }

    }
}