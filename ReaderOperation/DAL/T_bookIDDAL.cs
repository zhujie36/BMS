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
        private static bookID book;
        private static DataSet ds;
        private static DataRow dr;


        ///添加
        public static bool Add(bookID b)
        {
            
            sql = string.Format("insert into T_bookID (book_id,ISBN) values ('{0}','{1}')", b.Book_id,b.iSBN);
            return CSDBC.ExecSqlCommand(sql);
        }

        ///编辑
        public static bool Update(bookID b)
        {
            //sql = string.Format("update T_book set id='{0}',name='{1}',price='{2}',category='{3}',press='{4}',isLend='{5}' where id='{6}'", b.Id, b.Name, b.Price, b.Category, b.Press, b.IsLend, b.Id);
            sql = string.Format("update T_bookID set ISBN='{0} where book_id='{1}'",b.iSBN,b.Book_id);
            return CSDBC.ExecSqlCommand(sql);
        }

        ///删除
        public static bool Delete(string id)
        {
            sql = string.Format("Delete T_bookID where book_id='{0}'", id);
            return CSDBC.ExecSqlCommand(sql);
        }

        //取出单条
        public static bookID GetDataByID(string id)
        {
            book = new bookID();
            string sql = string.Format("select * from T_bookID where book_id='{0}'", id);
            dr = CSDBC.GetDateRow(sql);
            try
            {
                book.Book_id = dr["book_id"].ToString().Trim();
                book.iSBN = dr["ISBN"].ToString().Trim();
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
        

        //取出全部
        public static IList<bookID> GetAllData()
        {
            List<bookID> list = new List<bookID>();
            sql = "select * from T_bookID order by book_id desc";
            ds = CSDBC.GetDataSet(sql);
            if (ds == null)
                return null;
            else
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    bookID book = new bookID();
                    book.Book_id = dr["book_id"].ToString().Trim();
                    book.iSBN = dr["ISBN"].ToString().Trim();
                    list.Add(book);
                }
                return list;
            }
        }     
    }
}
