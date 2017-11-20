using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLL;
using System.Collections;


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
              


               
                //计算今天
                int n1 = BorrowListBLL.getFine1(now);


                //计算本周
                int n2 = BorrowListBLL.getFine2(now);


                //计算本月
                int n3 = BorrowListBLL.getFine3(now);


                //计算本年
                int n4 = BorrowListBLL.getFine4(now);

                Label3.Text = n1.ToString();
                Label5.Text = n2.ToString();
                Label7.Text = n3.ToString();
                Label9.Text = n4.ToString();


                
                //绑定年
                ArrayList list1 = new ArrayList();
                int start_year = 2010;
                for(int i = start_year; ;i++)
                {
                    list1.Add(i.ToString());
                    if (i == Convert.ToInt32(now_year))
                        break;
                }
                DropDownList1.DataSource = list1;
                DropDownList1.DataBind();
                DropDownList3.DataSource = list1;
                DropDownList3.DataBind();
                



                //绑定月
                ArrayList list2 = new ArrayList();
                int start_month = 1;
                for(int i = start_month;i < 13;i++)
                {
                    list2.Add(i.ToString());
                }
                DropDownList2.DataSource = list2;
                DropDownList2.DataBind();
                DropDownList4.DataSource = list2;
                DropDownList4.DataBind();
            }
            
        }

        


        protected void Button1_Click(object sender, EventArgs e)
        {
            string year1 = this.DropDownList1.SelectedValue;
            string month1 = this.DropDownList2.SelectedValue;
            string year2 = this.DropDownList3.SelectedValue;
            string month2 = this.DropDownList4.SelectedValue;


            int y1 = Convert.ToInt32(year1);
            int m1 = Convert.ToInt32(month1);
            int y2 = Convert.ToInt32(year2);
            int m2 = Convert.ToInt32(month2);


            //判断时间有没有超过现在
            DateTime now = DateTime.Now;
            string now_year = now.Year.ToString();
            string now_month = now.Month.ToString();
            int y = Convert.ToInt32(now_year);
            int m = Convert.ToInt32(now_month);
            if(y1 == y)
            {
                if(m1 > m)
                {
                    Label16.Text = "The start date choose is over now,you can't see the earnings in the furture!";
                    return;
                }
            }
            if(y2 == y)
            {
                if(m2 > m)
                {
                    Label16.Text = "The end date choose is over now,you can't see the earnings in the furture!";
                    return;
                }
            }



            //判断结束时间是否在开始时间之前
            if(y2 < y1)
            {
                Label16.Text = "The start date is over the end date,please the right date!";
                return;
            }
            if(y2 == y1)
            {
                if(m2 < m1)
                {
                    Label16.Text = "The start date is over the end date,please the right date!";
                    return;
                }
            }

            string result = BorrowListBLL.getFineDuration(year1, month1, year2, month2).ToString();
            Label16.Text = "During this time,the earning is : " + result + " Yuan";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = !Panel1.Visible;
        }
    }
}
 