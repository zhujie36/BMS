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
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim() != "" && TextBox2.Text.Trim()!="")
            {
                string s = TextBox1.Text.Trim();
                Response.Redirect("test2.aspx?s=" + s);
            }
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //if (TextBox1.Text.Trim() != "" && TextBox2.Text.Trim() != "")
                Response.Write("<script>alert('Borrow succeed,1!')</script>");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Response.Write("<script>alert('ok,1!')</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim() != "" && TextBox2.Text.Trim() != "" && TextBox4.Text.Trim() != "" && TextBox4.Text.Trim() != "")
                Response.Write("<script>alert('Borrow succeed,2!')</script>");
        }
    }
}