using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Model;
namespace DAL
{
    public class T_bookIDDAL
    {
        private static String sql;
        private static T_bookID book;
        private static DataSet ds;
        private static DataRow dr;

        ///用Book_id设置inLibrarain值
        public static bool setInLibrarain(string id,int value)
        {
            sql = string.Format("update T_bookID set inLibrarain='{0}' where book_id='{1}'", value,id);
            return CSDBC.ExecSqlCommand(sql);
        }



        ///添加
        public static bool Add(T_bookID b)
        {
            
            sql = string.Format("insert into T_bookID (book_id,ISBN,inLibrarain) values ('{0}','{1}','{2}')", b.Book_id,b.iSBN,1);
            return CSDBC.ExecSqlCommand(sql);
        }


        ///编辑
        public static bool Update(T_bookID b)
        {
            //sql = string.Format("update T_book set id='{0}',name='{1}',price='{2}',category='{3}',press='{4}',isLend='{5}' where id='{6}'", b.Id, b.Name, b.Price, b.Category, b.Press, b.IsLend, b.Id);
            sql = string.Format("update T_bookID set ISBN='{0}' where book_id='{1}'",b.iSBN,b.Book_id);
            return CSDBC.ExecSqlCommand(sql);
        }

        ///删除
        public static bool Delete(string id)
        {
            sql = string.Format("Delete T_bookID where book_id='{0}'", id);
            return CSDBC.ExecSqlCommand(sql);
        }

        //取出单条
        public static T_bookID GetDataByID(string id)
        {
            book = new T_bookID();
            string sql = string.Format("select * from T_bookID where book_id='{0}'", id);
            dr = CSDBC.GetDateRow(sql);
            try
            {
                book.Book_id = dr["book_id"].ToString().Trim();
                book.iSBN = dr["ISBN"].ToString().Trim();
                book.InLibrarain = Convert.ToInt32(dr["inLibrarain"].ToString().Trim());
                return book;
            }
            catch
            { return null; }
        }

        //由book_id查询ISBN
        public static string GetISBNByID(string ID)
        {
            string isbn ="";
            string sql = string.Format("select * from T_bookID where book_id='{0}'", ID);
            dr = CSDBC.GetDateRow(sql);
            try
            {
                isbn = dr["ISBN"].ToString().Trim();
                return isbn;
            }
            catch
            { return null; }
        }


        //由book_id查询inLibrarain
        public static int GetInLibrarainByID(string ID)
        {
            int a;
            string sql = string.Format("select * from T_bookID where book_id='{0}'", ID);
            dr = CSDBC.GetDateRow(sql);

            try
            {
                a = Convert.ToInt32(dr["inLibrarain"].ToString().Trim());
                return a;
            }
            catch
            { return -1; }
        }




        //取出全部
        public static IList<T_bookID> GetAllData()
        {
            List<T_bookID> list = new List<T_bookID>();
            sql = "select * from T_bookID order by book_id desc";
            ds = CSDBC.GetDataSet(sql);
            if (ds == null)
                return null;
            else
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    T_bookID book = new T_bookID();
                    book.Book_id = dr["book_id"].ToString().Trim();
                    book.iSBN = dr["ISBN"].ToString().Trim();
                    book.InLibrarain = Convert.ToInt32(dr["inLibrarain"].ToString().Trim());
                    list.Add(book);
                }
                return list;
            }
        }     
    }
}
