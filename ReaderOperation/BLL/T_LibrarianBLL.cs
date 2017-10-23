using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using DAL;

namespace BLL
{
    public class T_LibrarianBLL
    {
        public static bool Add(T_Librarian stu)
        {
            return T_LibrarianDAL.Add(stu);
        }

        public static bool Update(T_Librarian stu)
        {
            return T_LibrarianDAL.Update(stu);
        }

        public static bool Delete(string id)
        {
            return T_LibrarianDAL.Delete(id);
        }

        public static T_Librarian GetDataByID(string id)
        {
            return T_LibrarianDAL.GetDataByID(id);
        }

        public static T_Librarian GetDataByName(string name)
        {
            return T_LibrarianDAL.GetDataByName(name);
        }

        public static IList<T_Librarian> GetAllData()
        {
            return T_LibrarianDAL.GetAllData();
        }

    }
}
