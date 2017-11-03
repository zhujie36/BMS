using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLL;
namespace Reader
{
    public partial class RBorrowlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string reader = all.ID;
            if (reader == null)
            {
                Response.Redirect("login.aspx");
            }
                ///刷新每个借阅条目的超期值
                List<BorrowList> list = BorrowListBLL.GetAllByReader(reader);
                if (list != null)
                {
                    for (int i = 0; i < list.Count; i++)
                    {
                        int bor_id = list[i].BorrowID;
                        BorrowListBLL.exceedMoney(bor_id);
                    }
                }

                Repeater1.DataSource = BorrowListBLL.GetAllByReader(reader);
                Repeater1.DataBind();
            

        }

    }
}