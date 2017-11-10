using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using DAL;

namespace BLL
{
    public class T_ReaderBLL
    {
        public static bool Add(T_Reader stu)
        {
            return T_ReaderDAL.Add(stu);
        }

        public static bool Update(T_Reader stu)
        {
            return T_ReaderDAL.Update(stu);
        }

        public static bool Delete(string id)
        {
            return T_ReaderDAL.Delete(id);
        }

        // public object GetDataByID(string v)
        //{
        //  throw new NotImplementedException();
        //}

        public static T_Reader GetDataByID(string id)
        {
            return T_ReaderDAL.GetDataByID(id);
        }

        public static List<T_Reader> GetDataByName(string name)
        {
            return T_ReaderDAL.GetDataByName(name);
        }

        public static IList<T_Reader> GetAllData()
        {
            return T_ReaderDAL.GetAllData();
        }

        public static bool setState(string id, float state)
        {
            return T_ReaderDAL.setState(id, state);
        }

        public static bool setBookNumber(string id, int n)
        {
            return T_ReaderDAL.setBookNumber(id, n);
        }

        public static bool judgeBorrow(string id)
        {
            return T_ReaderDAL.judgeBorrow(id);
        }

        public static int getBookNumber(string id)
        {
            T_Reader reader = T_ReaderDAL.GetDataByID(id);
            if (reader == null)
                return -1;
            else
            {
                return reader.R_booknumber;
            }
        }
    }
}
