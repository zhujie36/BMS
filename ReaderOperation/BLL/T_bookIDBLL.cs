using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using DAL;
namespace BLL
{
    public class T_bookIDBLL
    {
        //添加
        public static bool Add(T_bookID b, T_book book)
        {
            bool result1 = T_bookIDDAL.Add(b);
            bool result2 = true;
            if (result1)
            {
                T_book tempBook = T_bookBLL.GetDataByID(b.iSBN);
                if (tempBook == null)
                {
                    result2 = T_bookDAL.Add(book);
                }
                else
                {
                    result2 = T_bookDAL.setTotalAmount(tempBook, int.Parse(tempBook.TotalAmount) + 1);
                }
                if (result2 == false)
                {
                    T_bookIDDAL.Delete(b.Book_id);
                    return false;
                }
                else
                    return true;
            }
            else
                return false;
        }

        ///删除
        public static bool Delete(T_bookID b)
        {
            bool result1 = T_bookIDDAL.Delete(b.Book_id);
            if(result1)
            {
                bool result2;
                T_book book = T_bookDAL.GetDataByID(b.iSBN);
                if(book.TotalAmount != "0")
                {
                    result2 = T_bookDAL.setTotalAmount(book, int.Parse(book.TotalAmount) - 1);
                }
                else
                {
                    result2 = T_bookDAL.Delete(b.iSBN);
                }
                if(result2)
                {
                    return true;
                }
                else
                {
                    T_bookIDDAL.Add(b);
                    return false;
                }
            }
            else
                return false;
        }

        //由book_id查询ISBN
        public static string GetISBNByID(string ID)
        {
            return T_bookIDDAL.GetISBNByID(ID);
        }

        //取出全部
        public static IList<T_bookID> GetAllData()
        {
            return T_bookIDDAL.GetAllData();
        }

        public static T_bookID GetDataByID(string id)
        {
            return T_bookIDDAL.GetDataByID(id);
        }


        //由book_id查询inLibrarain
        public static int GetInLibrarainByID(string ID)
        {
            return T_bookIDDAL.GetInLibrarainByID(ID);
        }


        ///用Book_id设置inLibrarain值
        public static bool setInLibrarain(string id, int value)
        {
            return T_bookIDDAL.setInLibrarain(id, value);
        }
    }
}
