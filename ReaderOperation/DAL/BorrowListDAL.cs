using System;
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

       

        public static bool Add(BorrowList b)
        {
            sql = string.Format("INSERT INTO BorrowList(reader,bookID,bookName,startTime,pic,number,money) VALUES ('{0}','{1}','{2}','{3}','{4}','{5}','{6}')", b.Reader, b.BookID, b.BookName, b.StartTime,b.Pic,b.Num,0);
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
            sql = "Delete from BorrowList where BorrowID=" + borid;
            return CSDBC.ExecSqlCommand(sql);
        }




        ///根据借阅ID取出单条借阅记录
        public static BorrowList GetDataByBorrowID(int id)
        {
            blist = new BorrowList();
            sql = string.Format("select * from BorrowList where BorrowID = '{0}'", id);
            dr = CSDBC.GetDateRow(sql);
            try
            {
                blist.BookID = Convert.ToInt32(dr["BookID"]);
                blist.Reader = dr["Reader"].ToString().Trim();
                blist.BorrowID = Convert.ToInt32(dr["BorrowID"]);
                blist.BookName = dr["BookName"].ToString().Trim();
                blist.StartTime = Convert.ToDateTime(dr["StartTime"]);
                blist.Pic = dr["pic"].ToString().Trim();
                blist.Num = dr["number"].ToString().Trim();
                blist.Money = Convert.ToDouble(dr["Money"]);
                return blist;
            }
            catch
            {
                return null;
            }
        }



        ///根据读者ID取出单条借阅记录
        public static BorrowList GetDataByReader(string name)
        {
            blist = new BorrowList();
            sql = string.Format("select * from BorrowList where Reader = '{0}'", name);
            dr = CSDBC.GetDateRow(sql);
            try
            {
                blist.BookID = Convert.ToInt32(dr["BookID"]);
                blist.Reader = dr["Reader"].ToString().Trim();
                blist.BorrowID = Convert.ToInt32(dr["BorrowID"]);
                blist.BookName = dr["BookName"].ToString();
                blist.StartTime = Convert.ToDateTime(dr["StartTime"]);
                blist.Pic = dr["pic"].ToString().Trim();
                blist.Num = dr["number"].ToString().Trim();
                blist.Money = Convert.ToDouble(dr["Money"]);
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
                    blist.BookID = Convert.ToInt32(dr["BookID"]);
                    blist.Reader = dr["Reader"].ToString().Trim();
                    blist.BorrowID = Convert.ToInt32(dr["BorrowID"]);
                    blist.BookName = dr["BookName"].ToString();
                    blist.StartTime = Convert.ToDateTime(dr["StartTime"]);
                    blist.Pic = dr["pic"].ToString().Trim();
                    blist.Num = dr["number"].ToString().Trim();
                    blist.Money = Convert.ToDouble(dr["Money"]);

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
                    blist.BookID = Convert.ToInt32(dr["BookID"]);
                    blist.Reader = dr["Reader"].ToString().Trim();
                    blist.BorrowID = Convert.ToInt32(dr["BorrowID"]);
                    blist.BookName = dr["BookName"].ToString();
                    blist.StartTime = Convert.ToDateTime(dr["StartTime"]);
                    blist.Pic = dr["pic"].ToString().Trim();
                    blist.Num = dr["number"].ToString().Trim();
                    blist.Money = Convert.ToDouble(dr["Money"]);
                    list.Add(blist);
                }
                return list;
            }
        }

    }
}
