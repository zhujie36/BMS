﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data;

namespace DAL
{
    public class BorrowListDAL
    {
        static BorrowList blist;
        static String sql;
        static DataSet ds;
        static DataRow dr;


        /// <summary>
        /// 添加新的借阅记录BorrowList
        /// </summary>
        /// <param name="blist"></param>
        /// <returns></returns>
        /// 


        
        

        //星期转化函数
        public static int getWeek(string a)
        {
            if (a == "Monday")
                return 1;
            else if (a == "Tuesday")
                return 2;
            else if (a == "Wednesday")
                return 3;
            else if (a == "Thursday")
                return 4;
            else if (a == "Friday")
                return 5;
            else if (a == "Saturday")
                return 6;
            else
                return 7;
        }

        public static bool judgetime (string year1,string month1,string year2,string month2,string year,string month)
        {
            int y1 = Convert.ToInt32(year1);
            int m1 = Convert.ToInt32(month1);
            int y2 = Convert.ToInt32(year2);
            int m2 = Convert.ToInt32(month2);
            int y = Convert.ToInt32(year);
            int m = Convert.ToInt32(month);

            if (y < y1 || y > y2)
                return false;
            
            if(y == y1)
            {
                if (m < m1)
                    return false;
            }

            if(y == y2)
            {
                if (m > m2)
                    return false;
            }

            return true;
        }


        public static double getFineDuration(string year1,string month1,string year2,string month2)
        {
            double fine = 0;
            List<BorrowList> list = new List<BorrowList>();
            sql = "select * from BorrowList";
            ds = CSDBC.GetDataSet(sql);

            if (ds == null)
            {
                return 0.00;
            }
            else
            {

                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    BorrowList blist = new BorrowList();
                    try
                    {
                        blist.Money = Convert.ToDouble(dr["Money"]);



                        if (blist.Money > 0)
                        {
                            blist.ReturnTime = Convert.ToDateTime(dr["ReturnTime"]);
                            string before_year = blist.ReturnTime.Year.ToString();
                            string before_month = blist.ReturnTime.Month.ToString();


                            if (judgetime(year1,month1,year2,month2,before_year,before_month))
                            {
                                fine = fine + blist.Money;
                            }
                        }
                    }
                    catch
                    {
                        return 0.00;
                    }
                }


                double final = System.Math.Round(fine, 2); 
                return final;
            }

        }



        //罚金计算
        public static double getFine1(DateTime now)
        {
            string now_year = now.Year.ToString();
            string now_month = now.Month.ToString();
            string now_dayinyear = now.DayOfYear.ToString();
            string now_weekday = now.DayOfWeek.ToString();

            
            double fine = 0;
            List<BorrowList> list = new List<BorrowList>();
            sql = "select * from BorrowList";
            ds = CSDBC.GetDataSet(sql);

            if (ds == null)
            {
                return 0.00;
            }
            else
            {

                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    BorrowList blist = new BorrowList();
                    try
                    {
                        blist.Money = Convert.ToDouble(dr["Money"]);
                        


                        if (blist.Money > 0)
                        {
                            blist.ReturnTime = Convert.ToDateTime(dr["ReturnTime"]);
                            string before_year = blist.ReturnTime.Year.ToString();
                            string before_dayinyear = blist.ReturnTime.DayOfYear.ToString();


                            if (before_year == now_year && before_dayinyear == now_dayinyear)
                            {
                                fine = fine + blist.Money;
                            }
                        }
                    }
                    catch
                    {
                        return 0.00;
                    }
                }


                double final = System.Math.Round(fine, 2);
                return final;

            }//今天

        }


        public static double getFine2(DateTime now)
        {
            //本周
            string now_year = now.Year.ToString();
            string now_month = now.Month.ToString();
            string now_dayinyear = now.DayOfYear.ToString();
            string now_weekday = now.DayOfWeek.ToString();
            double fine = 0;


            List<BorrowList> list = new List<BorrowList>();
            sql = "select * from BorrowList";
            ds = CSDBC.GetDataSet(sql);

            if (ds == null)
            {
                return 0.00;
            }
            else
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    BorrowList blist = new BorrowList();
                    try
                    {
                        blist.Money = Convert.ToDouble(dr["Money"]);


                        if (blist.Money > 0)
                        {
                            blist.ReturnTime = Convert.ToDateTime(dr["ReturnTime"]);
                            string before_year = blist.ReturnTime.Year.ToString();
                            string before_dayinyear = blist.ReturnTime.DayOfYear.ToString();
                            string before_weekday = blist.ReturnTime.DayOfWeek.ToString();



                            //之前天
                            int a = Convert.ToInt32(before_dayinyear);
                            //现在天
                            int b = Convert.ToInt32(now_dayinyear);
                            int c = b - a;


                            int m = getWeek(before_weekday);
                            int n = getWeek(now_weekday);
                            int p = n - m;

                            if (before_year == now_year && (c < 7) && (p >= 0))
                            {
                                fine = fine + blist.Money;
                            }
                        }

                    }catch
                    {
                        return 0.00;
                    }


                    

                }

                double final = System.Math.Round(fine, 2);
                return final;
            }

        }



         public static double getFine3(DateTime now)
        {
            string now_year = now.Year.ToString();
            string now_month = now.Month.ToString();
            string now_dayinyear = now.DayOfYear.ToString();
            string now_weekday = now.DayOfWeek.ToString();
            
            double fine = 0;
                List<BorrowList> list = new List<BorrowList>();
                sql = "select * from BorrowList";
                ds = CSDBC.GetDataSet(sql);


                if (ds == null)
                {
                    return 0.00;
                }
                else
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                    BorrowList blist = new BorrowList();
                    try
                        {
                            blist.Money = Convert.ToDouble(dr["Money"]);
                      

                            if (blist.Money > 0)
                            {
                                blist.ReturnTime = Convert.ToDateTime(dr["ReturnTime"]);
                                string before_year = blist.ReturnTime.Year.ToString();
                                string before_month = blist.ReturnTime.Month.ToString();


                                if (before_year == now_year && before_month == now_month)
                                {
                                    fine = fine + blist.Money;
                                }
                            }
                        }
                        catch
                        {
                            return 0.00;
                        }
                    }



                double final = System.Math.Round(fine, 2);
                return final;

            }
            
        }


            
        public static double getFine4(DateTime now)
        {
            string now_year = now.Year.ToString();
            string now_month = now.Month.ToString();
            string now_dayinyear = now.DayOfYear.ToString();
            string now_weekday = now.DayOfWeek.ToString();
            double fine = 0;
                List<BorrowList> list = new List<BorrowList>();
                sql = "select * from BorrowList";
                ds = CSDBC.GetDataSet(sql);
          

                if (ds == null)
                {
                    return 0.00;
                }
                else
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {

                    BorrowList blist = new BorrowList();
                    try
                        {
                            blist.Money = Convert.ToDouble(dr["Money"]);

                        
                            if (blist.Money > 0)
                            {
                                blist.ReturnTime = Convert.ToDateTime(dr["ReturnTime"]);
                                string before_year = blist.ReturnTime.Year.ToString();


                                if (before_year == now_year)
                                {
                                    fine = fine + blist.Money;
                                }
                            }
                        }
                        catch
                        {
                            return 0.00;
                        }
                    }


                double final = System.Math.Round(fine, 2);
                return final;

            }
           
        }



        public static bool Add(BorrowList b)
        {
            sql = string.Format("INSERT INTO BorrowList(reader,bookID,bookName,startTime,pic,number,money,Ret) VALUES ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')", b.Reader, b.BookID, b.BookName, b.StartTime,b.Pic,b.Num,0,0);
            return CSDBC.ExecSqlCommand(sql);
        }

        /// 归还了图书需要删除借阅记录
        public static bool Delete(int bookid, string reader)
        {
            sql = string.Format("Delete From BorrowList where BookID='{0}' and Reader='{1}'", bookid, reader);
            return CSDBC.ExecSqlCommand(sql);
        }


        ///根据借阅ID删除借阅记录
        public static bool DeleteByBorrowID(int borid)
        {
            sql = string.Format("Delete from BorrowList where BorrowID='{0}'",borid);
            return CSDBC.ExecSqlCommand(sql);
        }


        ///根据书ID取出单条借阅记录
        public static BorrowList GetDataByBookID(string id)
        {
            
            blist = new BorrowList();
            sql = string.Format("select * from BorrowList where bookID = '{0}' and ret = '{1}'", id,0);
            dr = CSDBC.GetDateRow(sql);
            try
            {
                blist.BookID = dr["BookID"].ToString();
                blist.Reader = dr["Reader"].ToString();
                blist.BorrowID = Convert.ToInt32(dr["BorrowID"]);
                blist.BookName = dr["BookName"].ToString().Trim();
                blist.StartTime = Convert.ToDateTime(dr["StartTime"]);
                //blist.ReturnTime = Convert.ToDateTime(dr["returnTime"]);
                blist.Pic = dr["pic"].ToString().Trim();
                blist.Num = dr["number"].ToString().Trim();
                blist.Money = Convert.ToDouble(dr["Money"]);
                blist.Ret = Convert.ToInt32(dr["Ret"]);
                return blist;
            }
            catch
            {
                return null;
            }
        }





        ///根据借阅ID取出单条借阅记录
        public static BorrowList GetDataByBorrowID(int id)
        {
            blist = new BorrowList();
            sql = string.Format("select * from BorrowList where BorrowID = '{0}'", id);
            dr = CSDBC.GetDateRow(sql);
            try
            {
                blist.BookID = dr["BookID"].ToString();
                blist.Reader = dr["Reader"].ToString().Trim();
                blist.BorrowID = Convert.ToInt32(dr["BorrowID"]);
                blist.BookName = dr["BookName"].ToString().Trim();
                blist.StartTime = Convert.ToDateTime(dr["StartTime"]);
                //blist.ReturnTime = Convert.ToDateTime(dr["returnTime"]);
                blist.Pic = dr["pic"].ToString().Trim();
                blist.Num = dr["number"].ToString().Trim();
                blist.Money = Convert.ToDouble(dr["Money"]);
                blist.Ret = Convert.ToInt32(dr["Ret"]);
                /// blist.ReturnTime = Convert.ToDateTime(dr["ReturnTime"]);
                return blist;
            }
            catch
            {
                return null;
            }
        }



        ///根据读者ID和书ID取出ReturnTime为空的借阅记录
        public static BorrowList GetData(string reader_id,string book_id)
        {
            blist = new BorrowList();
            sql = string.Format("select * from BorrowList where ReturnTime is null and Reader = '{0}' and BookID = '{1}'", reader_id,book_id);
            dr = CSDBC.GetDateRow(sql);
            try
            {
                blist.BookID = dr["BookID"].ToString();
                blist.Reader = dr["Reader"].ToString().Trim();
                blist.BorrowID = Convert.ToInt32(dr["BorrowID"]);
                blist.BookName = dr["BookName"].ToString();
                blist.StartTime = Convert.ToDateTime(dr["StartTime"]);
                blist.Pic = dr["pic"].ToString().Trim();
                blist.Num = dr["number"].ToString().Trim();
                blist.Money = Convert.ToDouble(dr["Money"]);
                blist.Ret = Convert.ToInt32(dr["Ret"]);
                ///blist.ReturnTime = Convert.ToDateTime(dr["ReturnTime"]);
                return blist;
            }
            catch
            {
                return null;
            }
        }


        ///根据读者ID取出单条借阅记录
        public static BorrowList GetDataByReader(string id)
        {
            blist = new BorrowList();
            sql = string.Format("select * from BorrowList where Reader = '{0}'", id);
            dr = CSDBC.GetDateRow(sql);
            try
            {
                blist.BookID = dr["BookID"].ToString();
                blist.Reader = dr["Reader"].ToString().Trim();
                blist.BorrowID = Convert.ToInt32(dr["BorrowID"]);
                blist.BookName = dr["BookName"].ToString();
                blist.StartTime = Convert.ToDateTime(dr["StartTime"]);
                blist.Pic = dr["pic"].ToString().Trim();
                blist.Num = dr["number"].ToString().Trim();
                blist.Money = Convert.ToDouble(dr["Money"]);
                blist.Ret = Convert.ToInt32(dr["Ret"]);
                ///blist.ReturnTime = Convert.ToDateTime(dr["ReturnTime"]);
                return blist;
            }
            catch
            {
                return null;
            }
        }

        ///根据读者ID取出借阅记录的集合并按借阅时间降序排列
        public static List<BorrowList> GetAllByReader(string name)
        {
            List<BorrowList> list = new List<BorrowList>();
            sql = "select * from BorrowList where reader ='" + name + "' order by StartTime desc";
            ds = CSDBC.GetDataSet(sql);
            if (ds == null)
                return null;
            else
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    blist = new BorrowList();
                    blist.BookID = dr["BookID"].ToString();
                    blist.Reader = dr["Reader"].ToString().Trim();
                    blist.BorrowID = Convert.ToInt32(dr["BorrowID"]);
                    blist.BookName = dr["BookName"].ToString();
                    blist.StartTime = Convert.ToDateTime(dr["StartTime"]);
                    blist.Pic = dr["pic"].ToString().Trim();
                    blist.Num = dr["number"].ToString().Trim();
                    blist.Money = Convert.ToDouble(dr["Money"]);
                    blist.Ret = Convert.ToInt32(dr["Ret"]);
                    ///blist.ReturnTime = Convert.ToDateTime(dr["ReturnTime"]);
                    list.Add(blist);
                }
                return list;
            }
        }
        ///根据读者ID取出借阅记录的集合并按借阅时间降序排列
        public static List<BorrowList> GetAllLoanByReader(string name)
        {
            List<BorrowList> list = new List<BorrowList>();
            sql = "select * from BorrowList where ret='0' and reader ='" + name + "' order by StartTime desc";
            ds = CSDBC.GetDataSet(sql);
            if (ds == null)
                return null;
            else
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    blist = new BorrowList();
                    blist.BookID = dr["BookID"].ToString();
                    blist.Reader = dr["Reader"].ToString().Trim();
                    blist.BorrowID = Convert.ToInt32(dr["BorrowID"]);
                    blist.BookName = dr["BookName"].ToString();
                    blist.StartTime = Convert.ToDateTime(dr["StartTime"]);
                    blist.Pic = dr["pic"].ToString().Trim();
                    blist.Num = dr["number"].ToString().Trim();
                    blist.Money = Convert.ToDouble(dr["Money"]);
                    blist.Ret = Convert.ToInt32(dr["Ret"]);
                    ///blist.ReturnTime = Convert.ToDateTime(dr["ReturnTime"]);
                    list.Add(blist);
                }
                return list;
            }
        }
        public static bool setNumber(int id, int value)
        {
            sql = string.Format("update BorrowList set number='{0}' where borrowID='{1}'", value, id);
            return CSDBC.ExecSqlCommand(sql);
        }


        public static bool setRet(int id,int value)
        {
            sql = string.Format("update BorrowList set ret='{0}' where borrowID='{1}'", value, id);
            return CSDBC.ExecSqlCommand(sql);
        }

        public static bool setReturnTime(int id)
        {
            DateTime now = DateTime.Now;
            sql = string.Format("update BorrowList set returnTime='{0}' where borrowID='{1}'", now, id);
            return CSDBC.ExecSqlCommand(sql);
        }


        public static bool setMoney(int id, double value)
        {
            sql = string.Format("update BorrowList set money='{0}' where borrowID='{1}'", value, id);
            return CSDBC.ExecSqlCommand(sql);
        }

        ///取出BorrowList中所有信息
        public static List<BorrowList> GetAllData()
        {
            List<BorrowList> list = new List<BorrowList>();
            sql = "select * from BorrowList";
            ds = CSDBC.GetDataSet(sql);
            if (ds == null)
            {
                return null;
            }
            else
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    blist = new BorrowList();
                    blist.BookID = dr["BookID"].ToString();
                    blist.Reader = dr["Reader"].ToString().Trim();
                    blist.BorrowID = Convert.ToInt32(dr["BorrowID"]);
                    blist.BookName = dr["BookName"].ToString();
                    blist.StartTime = Convert.ToDateTime(dr["StartTime"]);
                    blist.Pic = dr["pic"].ToString().Trim();
                    blist.Num = dr["number"].ToString().Trim();
                    blist.Money = Convert.ToDouble(dr["Money"]);
                    blist.Ret = Convert.ToInt32(dr["Ret"]);
                    ///blist.ReturnTime = Convert.ToDateTime(dr["ReturnTime"]);
                    list.Add(blist);
                }
                return list;
            }
        }

    }
}
