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

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            //String f = this.flag.Value;
            //if (f == "1")
            {

                T_Reader reader = new T_Reader();
                reader.R_name = TextBox1.Text.Trim();

                string name = reader.R_name;
                if (T_ReaderBLL.GetDataByName(name) != null)
                {
                    Response.Write("<script>alert('User name has been registered')</script>");
                }
                else
                {
                    reader.R_pwd = TextBox2.Text.Trim();
                    reader.R_sex = DropDownList1.SelectedItem.Text.Trim();
                    reader.R_tel = TextBox4.Text.Trim();
                    reader.R_addr = TextBox5.Text.Trim();
                    bool result = T_ReaderBLL.Add(reader);
                    if (result)
                    {
                        Response.Redirect("login.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('register failed!')</script>");
                    }
                }


            }

            
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}