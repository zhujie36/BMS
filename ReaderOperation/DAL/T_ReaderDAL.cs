using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using System.Data;
namespace DAL
{
    public class T_ReaderDAL
    {
        static string sql;
        static T_Reader stu;
        static DataSet ds;//ds用于存储取出的多行数据集
        static DataRow dr; //dr用于存储取出的一行数据集

        public static bool Add(T_Reader stu)//添加
        {
            sql = string.Format("insert into T_Reader (R_id,R_name,R_pwd,R_sex,R_cred,R_tel,R_email,R_state) values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')",stu.R_id, stu.R_name, stu.R_pwd, stu.R_sex, stu.R_cred, stu.R_tel, stu.R_email,0);
            return CSDBC.ExecSqlCommand(sql);
        }

        public static bool Update(T_Reader stu)//编辑
        {
            sql = string.Format("update T_Reader set R_name='{0}',R_pwd='{1}',R_sex='{2}',R_cred='{3}',R_tel='{4}',R_email='{5}',R_state='{6}' where R_id={7}", stu.R_name, stu.R_pwd, stu.R_sex, stu.R_cred, stu.R_tel, stu.R_email,stu.R_state, stu.R_id);
            return CSDBC.ExecSqlCommand(sql);
        }

        public static bool setState(string name, float state)//编辑
        {
            sql = string.Format("update T_Reader set R_state='{0}' where R_id={1}", state, name);
            return CSDBC.ExecSqlCommand(sql);
        }

        public static bool Delete(string id)
        {
            sql = string.Format("Delete T_Reader where R_id='{0}'", id);
            return CSDBC.ExecSqlCommand(sql);
        }

        public static T_Reader GetDataByID(string id)//取出单条
        {
            stu = new T_Reader();
            string sql = string.Format("select * from T_Reader where R_id='{0}'", id);
            dr = CSDBC.GetDateRow(sql);
            try
            {
                stu.R_id = dr["R_id"].ToString().Trim();
                stu.R_name = dr["R_name"].ToString().Trim();
                stu.R_pwd = dr["R_pwd"].ToString().Trim();
                stu.R_sex = dr["R_sex"].ToString().Trim();
                stu.R_cred = dr["R_cred"].ToString().Trim();
                stu.R_tel = dr["R_tel"].ToString().Trim();
                stu.R_email = dr["R_email"].ToString().Trim();
                stu.R_state = float.Parse(dr["R_state"].ToString().Trim());
                return stu;
            }
            catch
            { return null; }
        }

        public static List<T_Reader> GetDataByName(string id)//取出单条
        {
            List<T_Reader> list = new List<T_Reader>();
            sql = string.Format("select * from T_Reader where R_name='{0}'", id);
            ds = CSDBC.GetDataSet(sql);
            if (ds == null)
                return null;
            else
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    T_Reader stu = new T_Reader();
                    stu.R_id = dr["R_id"].ToString().Trim();
                    stu.R_name = dr["R_name"].ToString().Trim();
                    stu.R_pwd = dr["R_pwd"].ToString().Trim();
                    stu.R_sex = dr["R_sex"].ToString().Trim();
                    stu.R_cred = dr["R_cred"].ToString().Trim();
                    stu.R_tel = dr["R_tel"].ToString().Trim();
                    stu.R_email = dr["R_email"].ToString().Trim();
                    stu.R_state = float.Parse(dr["R_state"].ToString().Trim());
                    list.Add(stu);
                }
                return list;
            }
        }

        public static IList<T_Reader> GetAllData()//取出全部
        {
            List<T_Reader> list = new List<T_Reader>();
            sql = "select * from T_Reader order by id desc";
            ds = CSDBC.GetDataSet(sql);
            if (ds == null)
                return null;
            else
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    T_Reader stu = new T_Reader();
                    stu.R_id = dr["R_id"].ToString().Trim();
                    stu.R_name = dr["R_name"].ToString().Trim();
                    stu.R_pwd = dr["R_pwd"].ToString().Trim();
                    stu.R_sex = dr["R_sex"].ToString().Trim();
                    stu.R_cred = dr["R_cred"].ToString().Trim();
                    stu.R_tel = dr["R_tel"].ToString().Trim();
                    stu.R_email = dr["R_email"].ToString().Trim();
                    stu.R_state = float.Parse(dr["R_state"].ToString().Trim());
                    list.Add(stu);
                }
                return list;
            }
        }
    }
}
