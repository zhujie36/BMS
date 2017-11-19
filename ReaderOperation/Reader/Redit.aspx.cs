﻿using System;
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
            if(all.READER == null)
            {
                Response.Redirect("login.aspx");
            }
            
            if (!IsPostBack)
            {
                TextBox6.Text = all.ID;
                TextBox6.Enabled = false;
                stu = all.READER;
                for (int i = 0; i < DropDownList1.Items.Count; i++)
                {
                    if (DropDownList1.Items[i].Text.Trim() == stu.R_sex)
                    {
                        DropDownList1.Items[i].Selected = true;
                    }
                }
                TextBox1.Text = stu.R_name;
                TextBox3.Text = stu.R_state.ToString();
                TextBox3.Enabled = false;
                TextBox2.Text = stu.R_pwd;
                    TextBox4.Text = stu.R_tel;
                    TextBox5.Text = stu.R_email;
                    TextBox2.Visible = false;
                    Panel1.Visible = false;
            }
               // else
                   // Response.Redirect("IndexReader.aspx");
            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            all.READER.R_name = TextBox1.Text.Trim();
            all.NAME = TextBox1.Text.Trim();
            if (TextBox2.Text.ToString().Trim() != null && TextBox2.Text.ToString().Trim() != "")
                all.READER.R_pwd = TextBox2.Text.Trim();
            all.READER.R_sex = DropDownList1.SelectedItem.Text;
            all.READER.R_tel = TextBox4.Text.Trim();
            all.READER.R_email = TextBox5.Text.Trim();
            bool result = T_ReaderBLL.Update(all.READER);
            if (result)
                //Label1.Text = all.READER.R_tel;
                Response.Redirect("IndexReader.aspx");
            else
                Response.Write("<script>alert('Submit failed!')</script>");


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexReader.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button3.Visible = false;
            TextBox2.Visible = true;
            Panel1.Visible = true;
        }
    }
}