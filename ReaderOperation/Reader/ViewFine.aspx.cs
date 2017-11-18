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
	public partial class ViewFine1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

            if (all.ID == null)
            {
                Response.Redirect("login.aspx");
            }
            if(!IsPostBack)
            {
                DateTime now = DateTime.Now;
                string now_year = now.Year.ToString();
                string now_month = now.Month.ToString();
                string now_dayinyear = now.DayOfYear.ToString();
                string now_weekday = now.DayOfWeek.ToString();
                Label13.Text = now_year;
                Label14.Text = now_month;
                Label15.Text = now_dayinyear;
                Label16.Text = now_weekday;




                //计算今天
                int n1 = BorrowListBLL.getFine(1, now);


                //计算本周
                int n2 = BorrowListBLL.getFine(2, now);

                //计算本月
                int n3 = BorrowListBLL.getFine(3, now);


                //计算本年
                int n4 = BorrowListBLL.getFine(4, now);


                Label3.Text = n1.ToString();
                Label5.Text = n2.ToString();
                Label7.Text = n3.ToString();
                Label9.Text = n4.ToString();
            }
            
        }
	}
}