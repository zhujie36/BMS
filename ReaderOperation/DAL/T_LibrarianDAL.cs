using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using System.Data;


namespace DAL
{
    public class T_LibrarianDAL
    {
        static string sql;
        static T_Librarian stu;
        static DataSet ds;//ds用于存储取出的多行数据集
        static DataRow dr; //dr用于存储取出的一行数据集

        public static bool Add(T_Librarian stu)//添加
        {
            sql = string.Format("insert into T_Librarian (L_name,L_pwd) values ('{0}','{1}')",stu.L_name, stu.L_pwd);
            return CSDBC.ExecSqlCommand(sql);
        }

        public static bool Update(T_Librarian stu)//编辑
        {
            sql = string.Format("update T_Librarian set L_name='{0}',L_pwd='{1}' where L_id={2}", stu.L_name, stu.L_pwd, stu.L_id);
            return CSDBC.ExecSqlCommand(sql);
        }

        public static bool Delete(string id)
        {
            sql = string.Format("Delete T_Librarian where L_id='{0}'", id);
            return CSDBC.ExecSqlCommand(sql);
        }

        public static T_Librarian GetDataByID(string id)//取出单条
        {
            stu = new T_Librarian();
            string sql = string.Format("select * from T_Librarian where L_id='{0}'", id);
            dr = CSDBC.GetDateRow(sql);
            try
            {
                stu.L_id = dr["L_id"].ToString().Trim();
                stu.L_name = dr["L_name"].ToString().Trim();
                stu.L_pwd = dr["L_pwd"].ToString().Trim();
                return stu;
            }
            catch
            { return null; }
        }

        public static IList<T_Librarian> GetAllData()//取出全部
        {
            List<T_Librarian> list = new List<T_Librarian>();
            sql = "select * from T_Librarian order by id desc";
            ds = CSDBC.GetDataSet(sql);
            if (ds == null)
                return null;
            else
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    T_Librarian stu = new T_Librarian();
                    stu.L_id = dr["L_id"].ToString().Trim();
                    stu.L_name = dr["L_name"].ToString().Trim();
                    stu.L_pwd = dr["L_pwd"].ToString().Trim();
                    list.Add(stu);
                }
                return list;
            }
        }

        public static T_Librarian GetDataByName(string name)//取出单条
        {
            stu = new T_Librarian();
            string sql = string.Format("select * from T_Librarian where L_name='{0}'", name);
            dr = CSDBC.GetDateRow(sql);
            try
            {
                stu.L_id = dr["L_id"].ToString().Trim();
                stu.L_name = dr["L_name"].ToString().Trim();
                stu.L_pwd = dr["L_pwd"].ToString().Trim();
                return stu;
            }
            catch
            { return null; }
        }
    }
}

