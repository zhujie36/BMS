using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using BLL;
using Model;
namespace Reader
{
    public partial class test2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LBook.DataSource = T_bookIDBLL.GetAllData();
            LBook.DataBind();
        }
        
    }
}