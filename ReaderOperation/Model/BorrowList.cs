using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    /// <summary>
    /// BorrowList类
    /// </summary>
    public class BorrowList
    {
        #region fields
        private int borrowID;
        private String bookName;
        private string bookID;
        private string reader;
        private int ret;
        private DateTime startTime;
        private DateTime returnTime;

        private String pic;
        private string num;
        private double money;
        #endregion

        public int Ret
        {
            get { return ret; }
            set { ret = value; }
        }



        public string Num
        {
            get { return num; }
            set { num = value; }
        }


        public double Money
        {
            get { return money; }
            set { money = value; }
        }


        #region properties
        /// <summary>
        /// burrowID
        /// </summary>
        /// 
        public String Pic
        {
            get { return pic; }
            set { pic = value; }
        }


        public int BorrowID
        {
            get { return borrowID; }
            set { borrowID = value; }
        }
        /// <summary>
        /// 书
        /// </summary>
        public string BookID
        {
            get { return bookID; }
            set { bookID = value; }
        }
        /// <summary>
        /// 读者
        /// </summary>
        public string Reader
        {
            get { return reader; }
            set { reader = value; }
        }
        /// <summary>
        /// 书名
        /// </summary>
        public String BookName
        {
            get { return bookName; }
            set { bookName = value; }
        }
        /// <summary>
        /// 开始借阅时间
        /// </summary>
        public DateTime StartTime
        {
            get { return startTime; }
            set { startTime = value; }
        }
        #endregion
        public DateTime ReturnTime
        {
            get { return returnTime; }
            set { returnTime = value; }
        }

        /// <summary>
        /// constructor
        /// </summary>
        public BorrowList(string bookiD, string reader, String bookname, DateTime time,String p,string number)
        {
            bookID = bookiD;
            this.reader = reader;
            bookName = bookname;
            startTime = time;
            pic = p;
            num = number;
            ret = 0;
        }
        public BorrowList()
        {
        }
    }
}
