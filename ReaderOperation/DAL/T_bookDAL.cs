using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data;

namespace DAL
{
    /// <summary>
    /// 数据交互层
    /// </summary>
    public class T_bookDAL
    {
        private static String sql;
        private static T_book book;
        private static DataSet ds;
        private static DataRow dr;


        ///添加
        public static bool Add(T_book b)
        {
            //sql = string.Format("insert into T_book (Name,Sex) values ('{0}','{1}','{2}','{3}','{4}','{5}')", b.Id, b.Name, b.Price, b.Category, b.Press, b.IsLend);
           sql = string.Format("insert into T_book (name,price,category,press,totalAmount,loanAmount,pic,location) values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')",b.Name, b.Price, b.Category, b.Press,b.TotalAmount,0,b.Pic,b.Location);
           //sql = string.Format("insert into T_book (name,price,category,press,isLend) values ('{0}','{1}','{2}','{3}','{4}')",2, 2, 1, 1,1);
            return CSDBC.ExecSqlCommand(sql);
        }

        ///编辑
        public static bool Update(T_book b)
        {
            //sql = string.Format("update T_book set id='{0}',name='{1}',price='{2}',category='{3}',press='{4}',isLend='{5}' where id='{6}'", b.Id, b.Name, b.Price, b.Category, b.Press, b.IsLend, b.Id);
            sql = string.Format("update T_book set name='{0}',price='{1}',category='{2}',press='{3}',totalAmount='{4}',loanAmount='{5}',pic='{6}',location='{7}' where id='{8}'",b.Name, b.Price, b.Category, b.Press, b.TotalAmount, b.LoanAmount, b.Pic,b.Location, b.Id);
            return CSDBC.ExecSqlCommand(sql);
        }

        ///删除
        public static bool Delete(int id)
        {
            sql = string.Format("Delete T_book where id='{0}'", id);
            return CSDBC.ExecSqlCommand(sql);
        }

        //取出单条
        public static T_book GetDataByID(int id)
        {
            book = new T_book();
            string sql = string.Format("select * from T_book where id='{0}'", id);
            dr = CSDBC.GetDateRow(sql);
            try
            {
                book.Id = int.Parse(dr["id"].ToString().Trim());
                book.Name = dr["name"].ToString().Trim();
                book.Price = dr["price"].ToString().Trim();
                book.Category = dr["category"].ToString().Trim();
                book.Press = dr["press"].ToString().Trim();
                book.TotalAmount = dr["totalAmount"].ToString().Trim();
                book.LoanAmount = dr["loanAmount"].ToString().Trim();
                book.Pic = dr["pic"].ToString().Trim();
                book.Location = dr["location"].ToString().Trim();
                return book;
            }
            catch
            { return null; }
        }


        public static bool setLoanAmount(int id,int value)
        {
            sql = string.Format("update T_book set loanAmount='{0}' where id='{1}'", value,id);
           return CSDBC.ExecSqlCommand(sql);
        }

        //取出全部
        public static IList<T_book> GetAllData()
        {
            List<T_book> list = new List<T_book>();
            sql = "select * from T_book order by id desc";
            ds = CSDBC.GetDataSet(sql);
            if (ds == null)
                return null;
            else
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    T_book book = new T_book();
                    book.Id = int.Parse(dr["id"].ToString().Trim());
                    book.Name = dr["name"].ToString().Trim();
                    book.Price = dr["price"].ToString().Trim();
                    book.Category = dr["category"].ToString().Trim();
                    book.Press = dr["press"].ToString().Trim();
                    book.TotalAmount = dr["totalAmount"].ToString().Trim();
                    book.LoanAmount = dr["loanAmount"].ToString().Trim();
                    book.Pic = dr["pic"].ToString();
                    book.Location = dr["location"].ToString().Trim();
                    list.Add(book);
                }
                return list;
            }
        }

        /// <summary>
        /// 对指定书的指定属性赋值
        /// </summary>
        /// <param name="a">该指定书</param>
        /// <param name="type">该指定属性名（一致与数据库）</param>
        /// <param name="b">被赋予的值，String类型</param>
        /// <returns>赋值成功则返回true，否则返回false</returns>
        public static bool set(T_book a, String type, String b)
        {
            sql = "UPDATE T_book SET " + type + "=" + b + " WHERE id=" + a.Id;
            return CSDBC.ExecSqlCommand(sql);
        }


        public static List<T_book> getBySql(String s)
        {
            sql = "SELECT * FROM T_book " + s + " ORDER BY id ASC";
            List<T_book> list = new List<T_book>();
            //sql = "SELECT * FROM T_Student WHERE " + type + "=" + b + " ORDER BY Id DESC";
            ds = CSDBC.GetDataSet(sql);
            if (ds == null) return list;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                T_book book = new T_book();
                book.Id = int.Parse(dr["id"].ToString().Trim());
                book.Name = dr["name"].ToString().Trim();
                book.Price = dr["price"].ToString().Trim();
                book.Category = dr["category"].ToString().Trim();
                book.Press = dr["press"].ToString().Trim();
                book.TotalAmount = dr["totalAmount"].ToString().Trim();
                book.LoanAmount = dr["loanAmount"].ToString().Trim();
                book.Pic = dr["pic"].ToString();
                book.Location = dr["location"].ToString().Trim();
                list.Add(book);
            }
            return list;
        }



        public static List<T_book> getBy(String type, String b)
        {
            return getBySql("WHERE " + type + "='" + b+"'");
        }

        public static List<T_book> getByName(String b)
        {
            //return getBy("name", b);
            List<T_book> list = new List<T_book>();
            sql = string.Format("select * from T_book where name like '%{0}%' order by id desc",b);
            ds = CSDBC.GetDataSet(sql);
            if (ds == null)
                return null;
            else
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    T_book book = new T_book();
                    book.Id = int.Parse(dr["id"].ToString().Trim());
                    book.Name = dr["name"].ToString().Trim();
                    book.Price = dr["price"].ToString().Trim();
                    book.Category = dr["category"].ToString().Trim();
                    book.Press = dr["press"].ToString().Trim();
                    book.TotalAmount = dr["totalAmount"].ToString().Trim();
                    book.LoanAmount = dr["loanAmount"].ToString().Trim();
                    book.Pic = dr["pic"].ToString();
                    book.Location = dr["location"].ToString().Trim();
                    list.Add(book);
                }
                return list;
            }
        }

        public static List<T_book> getByCategory(String b)
        {
            return getBy("category", b);
        }

        /// <summary>
        /// 统计数据库中一共有多少条学生记录
        /// </summary>
        /// <returns>学生数</returns>
        /// 
       /* public static int getNumber()
        {
            sql = "SELECT COUNT(*) FROM T_Student";
            return CSDBC.num(sql);
        }
        /// <summary>
        /// 对指定学生的指定属性赋值
        /// </summary>
        /// <param name="a">该指定学生</param>
        /// <param name="type">该指定属性名（一致与数据库）</param>
        /// <param name="b">被赋予的值，String类型</param>
        /// <returns>赋值成功则返回true，否则返回false</returns>
        public static bool set(T_book a, String type, String b)
        {
            sql = "UPDATE T_Student SET " + type + "=" + b + " WHERE Id=" + a.Id;
            return CSDBC.ExecSqlCommand(sql);
        }
        /// <summary>
        /// 对一名学生的记录进行大修改
        /// 仅能修改以下表项：姓名、监护人、监护人联系方式、第二监护人、第二监护人联系方式、备注、备注二、备注三
        /// 不能修改以下表项：性别、入托日期、退园日期
        /// </summary>
        /// <param name="a"></param>
        /// <returns></returns>
        public static bool update(T_book a)
        {
            sql = string.Format("UPDATE T_Student SET Name='{1}',JiaZhang='{2}',Tel='{3}',JiaZhang2='{3}',Tel2='{4},Text='{5}',Text2='{6}',Text3='{7}' WHERE Id='{0}'", a.Id, a.Name, a.JiaZhang, a.Tel, a.JiaZhang2, a.Tel2, a.Text, a.Text1, a.Text2);
            return CSDBC.ExecSqlCommand(sql);
        }
        /// <summary>
        /// 创建一个新的学生记录
        /// </summary>
        /// <param name="a">被添加进去的学生对象</param>
        /// <returns>成功则返回true，反之false</returns>
        public static bool New(T_book a)
        {
            sql = string.Format("INSERT INTO T_Student(Id,Name,Sex,DayIn,DayOut,JiaZhang,Tel,JiaZhang2,Tel2,Text,Text2,Text3) VALUES ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}')", a.Id, a.Name, a.Sex, a.DayIn, a.DayOut, a.JiaZhang, a.Tel, a.JiaZhang2, a.Tel2, a.Text, a.Text1, a.Text2);
            return CSDBC.ExecSqlCommand(sql);
        }
        /// <summary>
        /// 取得姓名为指定字符串的全部学生
        /// </summary>
        /// <param name="b">该指定姓名</param>
        /// <returns>符合要求的学生的集合</returns>
        public static List<T_book> getByName(string b)
        {
            return getBy("Name", b);
        }
        /// <summary>
        /// 取得监护人/第二监护人为b的学生的集合
        /// 
        /// </summary>
        /// <param name="b">监护人的姓名</param>
        /// <returns>符合要求的学生的集合</returns>
        public static List<T_book> getByJiaZhang(string b)
        {
            List<T_book> list = getBy("JiaZhang", b);
            list.AddRange(getBy("JiaZhang2", b));
            return list;
        }
        /// <summary>
        /// 取得入托日期为day的全部学生
        /// </summary>
        /// <param name="day">该入托日期，格式为YYYYMMDD</param>
        /// <returns>符合要求的学生的集合</returns>
        public static List<T_book> getByDayIn(String day)
        {
            return getBy("DayIn", day);
        }
        /// <summary>
        /// 取得退园日期为day的全部学生
        /// </summary>
        /// <param name="day">该退园日期，格式为YYYYMMDD</param>
        /// <returns>符合要求的学生的集合</returns>
        public static List<T_book> getByDayOut(String day)
        {
            return getBy("DayOut", day);
        }
        /// <summary>
        /// 取得id为c的学生
        /// </summary>
        /// <param name="c">该id类型为object
        /// </param>
        /// <returns>符合要求的指定学生</returns>
        public static T_book getById(object c)
        {
            sql = "SELECT * FROM T_Student WHERE Id=" + c;
            dr = CSDBC.GetDateRow(sql);
            T_book a = new T_book();
            a.Name = dr["Name"].ToString();
            a.Id = dr["Id"].ToString();
            a.Sex = dr["Sex"].ToString();
            a.DayIn = dr["DayIn"].ToString();
            a.DayOut = dr["DayOut"].ToString();
            a.JiaZhang = dr["JiaZhang"].ToString();
            a.Tel = dr["Tel"].ToString();
            a.JiaZhang2 = dr["JiaZhang2"].ToString();
            a.Tel2 = dr["Tel2"].ToString();
            a.Text = dr["Text"].ToString();
            a.Text1 = dr["Text2"].ToString();
            a.Text2 = dr["Text3"].ToString();
            a.main = true;
            return a;
        }
        /// <summary>
        /// 取得某条属性为某值的学生的集合
        /// </summary>
        /// <param name="type">该属性名</param>
        /// <param name="b">该属性值</param>
        /// <returns>符合要求的学生的集合</returns>
        public static List<T_book> getBy(String type, String b)
        {
            return getBySql("WHERE " + type + "=" + b);
        }
        /// <summary>
        /// 取得满足条件的全部学生，根据Id排序
        /// </summary>
        /// <param name="s">WHERE开头的SQL语句</param>
        /// <returns>满足条件的学生的集合</returns>
        public static List<T_book> getBySql(String s)
        {
            sql = "SELECT * FROM T_Student " + s + " ORDER BY Id ASC";
            List<T_book> list = new List<T_book>();
            //sql = "SELECT * FROM T_Student WHERE " + type + "=" + b + " ORDER BY Id DESC";
            ds = CSDBC.GetDataSet(sql);
            if (ds == null) return list;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                T_book a = new T_book();
                a.Id = dr["Id"].ToString();
                a.Name = dr["Name"].ToString();
                a.Sex = dr["Sex"].ToString();
                a.DayIn = dr["DayIn"].ToString();
                a.DayOut = dr["DayOut"].ToString();
                a.JiaZhang = dr["JiaZhang"].ToString();
                a.Tel = dr["Tel"].ToString();
                a.JiaZhang2 = dr["JiaZhang2"].ToString();
                a.Tel2 = dr["Tel2"].ToString();
                a.Text = dr["Text"].ToString();
                a.Text1 = dr["Text"].ToString();
                a.Text2 = dr["Text2"].ToString();
                a.main = true;

                list.Add(a);
            }
            return list;
        }
        /// <summary>
        /// 如果其它的方法都不能正常工作了，这个方法的存在可以保证这个系统不会彻底瘫痪掉
        /// </summary>
        /// <param name="s"></param>
        /// <returns></returns>
        public static bool order(String s)
        {
            return CSDBC.ExecSqlCommand(s);
        }*/
    }
}
