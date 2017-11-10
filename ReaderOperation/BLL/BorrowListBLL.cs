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




        ///根据读者ID和书ID取出ReturnTime为空的借阅记录
        public static BorrowList GetData(string reader_id, string book_id)
        {
            return BorrowListDAL.GetData(reader_id, book_id);
        }


        ///根据借阅ID取出记录
        public static BorrowList GetDataByBorrowID(int id)
        {
            return BorrowListDAL.GetDataByBorrowID(id);
        }

        ///根据读者ID取出单条记录
        public static BorrowList GetDataByReader(string reader_id)
        {
            return BorrowListDAL.GetDataByReader(reader_id);
        }

        public static bool setRet(int id, int value)
        {
            return BorrowListDAL.setRet(id,value);
        }


        ///根据读者ID取出全部记录
        public static List<BorrowList> GetAllByReader(string name)
        {
            return BorrowListDAL.GetAllByReader(name);
        }

        public static BorrowList GetDataByBookID(string id)
        {
            return BorrowListDAL.GetDataByBookID(id);
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


        public static bool setReturnTime(int id)
        {
            return BorrowListDAL.setReturnTime(id);
        }

        public static bool setMoney(int id, double value)
        {
            return BorrowListDAL.setMoney(id, value);
        }

        public static bool bookReturn(string book_id)
        {
            string isbn = T_bookIDBLL.GetISBNByID(book_id);

            T_book book = T_bookBLL.GetDataByID(isbn);
            BorrowList list = BorrowListBLL.GetDataByBookID(book_id);
            int borrow_id = list.BorrowID;
            string reader_id = list.Reader;


            


            ///设置书本借出量
            int loan = int.Parse(book.LoanAmount) - 1;
            bool result1 = T_bookBLL.setLoanAmount(isbn, loan);


            ///设置归还时间
            bool result2 = BorrowListBLL.setReturnTime(borrow_id);



            ///设置欠的钱及借阅记录中Money值
            DateTime now = DateTime.Now;
            DateTime borrow = list.StartTime;
            System.TimeSpan time = now - borrow;
            float days = float.Parse(time.TotalDays.ToString());


            bool result3 = true;
            bool result6 = true;

            if(days > 30)
            {
                days = days - 30;
                float state = -days;
                result3 = T_ReaderBLL.setState(reader_id, state);
                result6 = BorrowListBLL.setMoney(list.BorrowID, days);
            }
            else
            {
               
                result6 = BorrowListBLL.setMoney(list.BorrowID, 0);
            }
           


            ///设置借阅记录为已归还
            bool result5 = BorrowListBLL.setRet(list.BorrowID, 1);


            ///设置拥有数数量
            int n = T_ReaderBLL.GetDataByID(reader_id).R_booknumber;
            bool result4 = T_ReaderBLL.setBookNumber(reader_id, n - 1);


            ///设置inLibrarain值为1
            bool result7 = T_bookIDBLL.setInLibrarain(book_id,1);



            if (result1 == true && result2 == true && result3 == true && result4 == true && result5 && result6 && result7)
                return true;
            else
                return false;
        }


        public static double exceedMoney(int id)
        {
            DateTime now = DateTime.Now;
            DateTime borrow = BorrowListBLL.GetDataByBorrowID(id).StartTime;
            System.TimeSpan time = now - borrow;
            double days = time.TotalDays;
            if(days >　30)
            {
                double mon = (days - 30) * 0.1;
                String m = mon.ToString();
                mon = Convert.ToDouble(decimal.Round(decimal.Parse(m), 2));
                BorrowListBLL.setMoney(id,mon);
                return mon;
            }
            else
            {
                double mon = 0;
                BorrowListBLL.setMoney(id, mon);
                return mon;
            }
           
            　
        }

        public static bool borrowBook(string reader_id, string book_id)
        {
            string isbn = T_bookIDDAL.GetISBNByID(book_id);
            T_book book = T_bookDAL.GetDataByID(isbn);
            int loan = 1 + int.Parse(book.LoanAmount);
            bool result1 = T_bookBLL.setLoanAmount(book.iSBN, loan);


            ///修改inLibrarain值
            bool result4 = T_bookIDBLL.setInLibrarain(book_id,0);
           

            ///插入借阅记录
            DateTime now = DateTime.Now;
            BorrowList borlist = new BorrowList(book_id, reader_id, book.Name, now, book.Pic, "1");
            bool result2 = BorrowListBLL.Add(borlist);


            ///修改读者所借图书量
            int n = T_ReaderBLL.GetDataByID(reader_id).R_booknumber;
            bool result3 = T_ReaderBLL.setBookNumber(reader_id, n + 1);

            if (result1 == true && result2 == true && result3 == true && result4)
                return true;
            else
                return false;
        }
    }
}

