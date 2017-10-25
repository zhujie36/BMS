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
    public partial class login : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                RadioButtonList1.SelectedIndex = 1;              
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text.Trim();
            string pwd = TextBox2.Text.Trim();
            string content = RadioButtonList1.SelectedItem.Value.Trim();

            if (content == "1")
            {
                T_Librarian lib = new T_Librarian();
                lib = T_LibrarianBLL.GetDataByName(name);
                if (lib != null && lib.L_pwd == pwd)
                {
                    all.NAME = name;
                    all.LIB = lib;
                    all.ID = all.LIB.L_id;
                    Response.Write("<script>alert('登录成功')</script>");
                    Response.Redirect("IndexLibrarian.aspx?");
                }
                else
                {
                    Response.Write("<script>alert('输入的用户名或密码不正确!')</script>");
                }

            }
            else
            {
                T_Reader lib = new T_Reader();
                lib = T_ReaderBLL.GetDataByName(name);
                if (lib != null && lib.R_pwd == pwd)
                {
                    all.NAME = name;
                    all.READER = lib;
                    all.ID = lib.R_id;
                    Response.Write("<script>alert('login succeed!')</script>");
                    Response.Redirect("IndexReader.aspx?");
                }
                else
                {
                    Response.Write("<script>alert('login failed!')</script>");
                }
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        
    }
}