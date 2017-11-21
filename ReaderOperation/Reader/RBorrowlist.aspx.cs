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
            if(!IsPostBack)
            {
                
                Repeater1.DataSource = BorrowListBLL.GetAllByReader(reader);
                Repeater1.DataBind();
            }
               
            

        }

    }
}