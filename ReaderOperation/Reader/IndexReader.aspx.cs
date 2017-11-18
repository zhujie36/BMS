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
    public partial class IndexReader : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (all.ID == null)
            {
                Response.Redirect("login.aspx");
            }
        }

           
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("bookFind.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Redit.aspx");
        }
    }
}