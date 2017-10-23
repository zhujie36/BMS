using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using DAL;

namespace BLL
{
    public class BorrowListBLL
    {
        /// <summary>
        /// 添加借阅记录
        /// </summary>
        public static bool Add(BorrowList borlist)
        {
            return BorrowListDAL.Add(borlist);
        }

        ///删除借阅记录
        public static bool Delete(int book_id, string reader)
        {
            return BorrowListDAL.Delete(book_id, reader);
        }

        ///根据借阅ID删除借阅记录
        public static bool DeleteByBorrowID(int id)
        {
            return BorrowListDAL.DeleteByBorrowID(id);
        }


        ///根据借阅ID取出记录
        public static BorrowList GetDataByBorrowID(int id)
        {
            return BorrowListDAL.GetDataByBorrowID(id);
        }

        ///根据读者ID取出单条记录
        public static BorrowList GetDataByReader(string name)
        {
            return BorrowListDAL.GetDataByReader(name);
        }


        ///根据读者ID取出全部记录
        public static List<BorrowList> GetAllByReader(string name)
        {
            return BorrowListDAL.GetAllByReader(name);
        }


        ///取出所有记录
        public static List<BorrowList> GetAllData()
        {
            return BorrowListDAL.GetAllData();
        }

        public static bool setNumber(int id, int value)
        {
            return BorrowListDAL.setNumber(id, value);
        }
    }
}

