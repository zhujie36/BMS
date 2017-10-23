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
    public partial class Redit : System.Web.UI.Page
    {
        T_Reader stu = new T_Reader();
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox6.Text = all.ID;
            TextBox6.Enabled = false;
            stu = all.READER;
            TextBox1.Text = stu.R_name;
            TextBox1.Enabled = false;
            if (!IsPostBack)
            {
                    TextBox2.Text = stu.R_pwd;
                    TextBox3.Text = stu.R_cred;
                    TextBox4.Text = stu.R_tel;
                    TextBox5.Text = stu.R_addr;
                }
               // else
                   // Response.Redirect("IndexReader.aspx");
            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            all.READER.R_name = TextBox1.Text.Trim();
            all.NAME = TextBox1.Text.Trim();
            all.READER.R_pwd = TextBox2.Text.Trim();
            all.READER.R_cred = TextBox3.Text.Trim();
            all.READER.R_tel = TextBox4.Text.Trim();
            all.READER.R_addr = TextBox5.Text.Trim();
            bool result = T_ReaderBLL.Update(all.READER);
            if (result)
                //Label1.Text = all.READER.R_tel;
                Response.Redirect("IndexReader.aspx");
            else
                Response.Write("<script>alert('提交失败!')</script>");


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexReader.aspx");
        }
    }
}