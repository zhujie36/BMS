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
    public partial class Return : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (all.ID == null)
            {
                Response.Redirect("login.aspx");
            }
            Panel2.Visible = false;
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
           
            string book_id = TextBox2.Text.Trim();
            ///判断是否已归还
            int flag1 = T_bookIDBLL.GetInLibrarainByID(book_id);
            if (flag1 == 1)
            {
                //Response.Write("The book has already been returned!");
                Panel2.Visible = true;
                Label4.Text = "The book has already been returned!";
            }
            else
            {
                bool result = BorrowListBLL.bookReturn(book_id);
                if(result == true)
                {
                    Panel2.Visible = true;
                    Label4.Text = "Return succeed!";
                    TextBox2.Text = "";
                }
                else
                {
                    //Response.Write("Return failed!");
                    Panel2.Visible = true;
                    Label4.Text = "Return failed!";
                }
            }
        }




        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexLibrarian.aspx");
        }


    }
}