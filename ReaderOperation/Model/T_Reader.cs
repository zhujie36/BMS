using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class T_Reader
    {
        #region fields
        private string id;
        private string name;
        private string pwd;
        private string sex;
        private string cred;
        private string tel;
        private string email;
        private float state;
        #endregion

        #region properties



        ///<summary>
        ///ID
        ///</summary>
        ///
        public float R_state
        {
            get { return state; }
            set { state = value; }
        }

        public string R_id
        {
            get { return id; }
            set { id = value; }
        }
        ///<summary>
        ///姓名
        ///</summary>
        public string R_name
        {
            get { return name; }
            set { name = value; }
        }
        ///<summary>
        ///密码
        ///</summary>
        public string R_pwd
        {
            get { return pwd; }
            set { pwd = value; }
        }
        ///<summary>
        ///性别
        ///</summary>
        public string R_sex
        {
            get { return sex; }
            set { sex = value; }
        }
        ///<summary>
        ///身份证号
        ///</summary>
        public string R_cred
        {
            get { return cred; }
            set { cred = value; }
        }
        ///<summary>
        ///联系方式
        ///</summary>
        public string R_tel
        {
            get { return tel; }
            set { tel = value; }
        }
        ///<summary>
        ///家庭住址
        ///</summary>
        public string R_email
        {
            get { return email; }
            set { email = value; }
        }
        #endregion

        ///<summary>
        ///constructor
        ///</summary>
        public T_Reader(string id, string name, string pwd, string sex, string cred, string tel, string addr)
        {
            this.id = id;
            this.name = name;
            this.pwd = pwd;
            this.sex = sex;
            this.cred = cred;
            this.tel = tel;
            this.email = addr;
        }

        public T_Reader(string name, string pwd, string sex, string cred, string tel, string addr)
        {
            this.name = name;
            this.pwd = pwd;
            this.sex = sex;
            this.cred = cred;
            this.tel = tel;
            this.email= addr;
        }

        public T_Reader()
        {
        }
    }
}
