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
    public partial class register : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (all.ID == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            //String f = this.flag.Value;
            //if (f == "1")
            {

                T_Reader reader = new T_Reader();
                reader.R_id = TextBox3.Text.Trim();

                string id = reader.R_id;
                if (T_ReaderBLL.GetDataByID(id) != null)
                {
                    Response.Write("<script>alert('this student has been registered')</script>");
                }
                else
                {
                    reader.R_name = TextBox1.Text.Trim();
                    reader.R_pwd = TextBox2.Text.Trim();
                    reader.R_sex = DropDownList1.SelectedItem.Text.Trim();
                    reader.R_tel = TextBox4.Text.Trim();
                    reader.R_email = TextBox5.Text.Trim();
                    bool result = T_ReaderBLL.Add(reader);
                    if (result)
                    {
                        Response.Redirect("IndexLibrarian.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('add failed!')</script>");
                    }
                }


            }

            
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexLibrarian.aspx");
        }
    }
}