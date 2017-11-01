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

        public static T_Reader GetDataByName(string name)
        {
            return T_ReaderDAL.GetDataByName(name);
        }

        public static IList<T_Reader> GetAllData()
        {
            return T_ReaderDAL.GetAllData();
        }

        public static bool setState(string name, float state)
        {
            return T_ReaderDAL.setState(name, state);
        }
    }
}
