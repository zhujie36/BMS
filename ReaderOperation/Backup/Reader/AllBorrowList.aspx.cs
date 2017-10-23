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
            if (!IsPostBack)
            {
                int id = 2;  ///当前用户的ID应该从登陆界面传过来，现在先假定为1
                Repeater1.DataSource = BorrowListBLL.GetAllByReaderID(id);
                Repeater1.DataBind();
            }
        }
    }
}