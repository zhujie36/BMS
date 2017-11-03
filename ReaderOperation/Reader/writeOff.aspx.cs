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
    public partial class writeOff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (all.ID == null)
            {
                Response.Redirect("login.aspx");
            }
            Panel1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexLibrarian.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text.Trim();
            if(name == null || name == "")
            {
                Label3.Text = "name cannot be null";
                Panel1.Visible = true;
            }
            else if(T_ReaderBLL.GetDataByName(name) == null)
            {
                Label3.Text = "this reader do not exist";
                Panel1.Visible = true;
            }
            else if(BorrowListBLL.GetAllByReader(name) != null)
            {
                Panel1.Visible = true;
                Label3.Text = "this reader has some book that haven't returned!";
            }
            else
            {
                T_Reader reader = T_ReaderBLL.GetDataByID(name);
                bool result = T_ReaderBLL.Delete(reader.R_id);
                if(result == true)
                {
                    Response.Redirect("IndexLibrarian.aspx");
                }
                else
                {
                    Response.Write("<script>alert('delete failed！')</script>");
                }
            }
        }
    }
}