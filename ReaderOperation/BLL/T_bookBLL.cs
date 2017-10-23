using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using Model;

namespace BLL
{
    /// <summary>
    /// 业务逻辑层
    /// </summary>
    public class T_bookBLL
    {
        public static bool Add(T_book stu)
        {
            return T_bookDAL.Add(stu);
        }

        public static bool Update(T_book stu)
        {
            return T_bookDAL.Update(stu);
        }

        public static bool Delete(int id)
        {
            return T_bookDAL.Delete(id);
        }

        public static T_book GetDataByID(int id)
        {
            return T_bookDAL.GetDataByID(id);
        }

        public static List<T_book> GetByName(string name)
        {
            return T_bookDAL.getByName(name);
        }

        public static List<T_book> GetByCategory(string c)
        {
            return T_bookDAL.getByCategory(c);
        }
        

        public static IList<T_book> GetAllData()
        {
            return T_bookDAL.GetAllData();
        }


        public static bool setLoanAmount(int id, int value)
        {
            return T_bookDAL.setLoanAmount(id,value);
        }
    }
}
