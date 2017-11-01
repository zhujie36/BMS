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
    public partial class AllBorrowList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string reader = "";
            if(Request.QueryString["reader"] != null)
            {
                reader = Request.QueryString["reader"].Trim();
                TextBox1.Text = reader;



                ///刷新每个借阅条目的超期值
                List<BorrowList> list = BorrowListBLL.GetAllByReader(reader);
                if(list != null)
                {
                    for(int i = 0;i < list.Count;i++)
                    {
                        int bor_id = list[i].BorrowID;
                        BorrowListBLL.exceedMoney(bor_id);
                    }
                }
                




                Repeater1.DataSource = BorrowListBLL.GetAllByReader(reader);
                Repeater1.DataBind();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexLibrarian.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text.Trim();


            ///刷新每个借阅条目的超期值
            List<BorrowList> list = BorrowListBLL.GetAllByReader(name);
            if(list != null)
            {
                for (int i = 0; i < list.Count; i++)
                {
                    int bor_id = list[i].BorrowID;
                    BorrowListBLL.exceedMoney(bor_id);
                }
            }
            

            

            //T_Reader reader = T_ReaderBLL.GetDataByName(name);
            // int id = Convert.ToInt32(reader.R_id);  ///当前用户的ID应该从登陆界面传过来，现在先假定为2
            Repeater1.DataSource = BorrowListBLL.GetAllByReader(name);
            Repeater1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexLibrarian.aspx");
        }
    }
}