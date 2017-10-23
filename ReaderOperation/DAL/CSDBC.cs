using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DAL
{
    /// <summary>
    /// CS指的C#；
    /// DB指的数据库；
    ///
    /// </summary>
    public class CSDBC
    {
        //private static string ConStr = System.Configuration.ConfigurationManager.AppSettings["ConStr"];
        private static string ConStr = "data source=DESKTOP-F1LNB42;initial catalog=db;user id=sa;password=sa";
        private static SqlConnection conn = new SqlConnection(ConStr);
        private static void ConOpen()
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
        }

        private static void ConClose()
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }
        /// <summary>
        /// 执行SQL语句，返回受影响的记录条数
        /// </summary>
        /// <param name="sql">任意SQL语句SELECT、DELETE、UPDATE、INSERT等</param>
        /// <returns>受影响的行数</returns>
        public static int num(String sql)
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = sql;
            try
            {
                ConOpen();
                int i = (int)cmd.ExecuteScalar();
                
                return i;
            }
            catch 
            {
                return 0;
            }
            finally
            {
                ConClose();
            }
        }
        /// <summary>
        /// 执行SQL语句，返回bool
        /// </summary>
        /// <param name="sql">insert、update、delete</param>
        /// <returns></returns>
        public static bool ExecSqlCommand(string sql)
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = sql;
            try
            {
                ConOpen();
                int i = cmd.ExecuteNonQuery();
                return i > 0 ? true : false;
            }
            catch
            {
                return false;
            }
            finally
            {
                ConClose();
            }


        }

        public static DataRow GetDateRow(string sql)
        {
            DataSet ds = new DataSet();
            try
            {
                ConOpen();
                SqlDataAdapter dpt = new SqlDataAdapter(sql, conn);
                dpt.Fill(ds);
                int i = ds.Tables[0].Rows.Count;
                return i > 0 ? ds.Tables[0].Rows[0] : null;
            }
            catch
            {
                return null;
            }
            finally
            {
                ConClose();
            }

        }

        public static DataSet GetDataSet(string sql)
        {
            DataSet ds = new DataSet();
            try
            {
                ConOpen();
                SqlDataAdapter dpt = new SqlDataAdapter(sql, conn);
                dpt.Fill(ds);
                int i = ds.Tables[0].Rows.Count;
                return i > 0 ? ds : null;
            }
            catch
            {
                return null;
            }
            finally
            {
                ConClose();
            }
        }
    }
}
