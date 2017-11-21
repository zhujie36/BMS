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
    public partial class bookLost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(all.ID == null)
            {
                Response.Redirect("login.aspx");
            }
            Panel1.Visible = false;
           /* string reader = "";
            if (Request.QueryString["reader"] != null)
            {
                reader = Request.QueryString["reader"].Trim();
                TextBox1.Text = reader;



                ///刷新每个借阅条目的超期值
                List<BorrowList> list = BorrowListBLL.GetAllLoanByReader(reader);
                if (list != null)
                {
                    for (int i = 0; i < list.Count; i++)
                    {
                        int bor_id = list[i].BorrowID;
                        BorrowListBLL.exceedMoney(bor_id);
                    }
                }
                Repeater1.DataSource = BorrowListBLL.GetAllLoanByReader(reader);
                Repeater1.DataBind();
            }
            if(!IsPostBack)
            {
                Panel2.Visible = false;
            }*/
        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {
            string stu = TextBox1.Text.Trim();
            if(stu == null || stu == "")
            {
                Panel1.Visible = true;
                Label2.Text = "Please input student's ID!";
                return;
            }
            T_Reader reader = T_ReaderBLL.GetDataByID(stu);
            if(reader == null)
            {
                Panel1.Visible = true;
                Label2.Text = "Cannot get this student's infromation,please input right student's ID!";
                return;
            }
            Panel2.Visible = true;
            ///刷新每个借阅条目的超期值
            List<BorrowList> list = BorrowListBLL.GetAllLoanByReader(stu);
            if (list != null)
            {
                for (int i = 0; i < list.Count; i++)
                {
                    int bor_id = list[i].BorrowID;
                    BorrowListBLL.exceedMoney(bor_id);
                }
            }
            Repeater1.DataSource = BorrowListBLL.GetAllLoanByReader(stu);
            Repeater1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexLibrarian.aspx");
        }

    }
}