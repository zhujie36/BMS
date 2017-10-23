using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class T_Librarian
    {
        #region fields
        private string id;
        private string name;
        private string pwd;
        #endregion

        #region properties
        ///<summary>
        ///ID
        ///</summary>
        public string L_id
        {
            get { return id; }
            set { id = value; }
        }
        ///<summary>
        ///姓名
        ///</summary>
        public string L_name
        {
            get { return name; }
            set { name = value; }
        }
        ///<summary>
        ///密码
        ///</summary>
        public string L_pwd
        {
            get { return pwd; }
            set { pwd = value; }
        }
        #endregion

        ///<summary>
        ///constructor
        ///</summary>
        public T_Librarian(string id, string name, string pwd)
        {
            this.id = id;
            this.name = name;
            this.pwd = pwd;
        }

        public T_Librarian(string name, string pwd)
        {
            this.name = name;
            this.pwd = pwd;
        }

        public T_Librarian()
        {
        }

    }
}

