using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{

    /// <summary>
    /// T_book类
    /// </summary>
    public class T_book
    {
        private int id;
        private string name;
        private string price;
        private string category;
        private string press;
        private string totalAmount;
        private string loanAmount;
        private string pic;
        private string location;
        ///<summary>
        ///id
        ///</summary>
        ///
        public string Pic
        {
            get { return pic; }
            set { pic = value; }
        }

        public string Location
        {
            get { return location; }
            set { location = value; }
        }

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        public string Price
        {
            get { return price; }
            set { price = value; }
        }

        public string Category
        {
            get { return category; }
            set { category = value; }
        }

        public string Press
        {
            get { return press; }
            set { press = value; }
        }

        public string TotalAmount
        {
            get { return totalAmount; }
            set { totalAmount = value; }
        }

        public string LoanAmount
        {
            get { return loanAmount; }
            set { loanAmount = value; }
        }

        public T_book()
        {

        }

        public T_book(int id, string name, string price, string category,
            string press, string total, string loan, string pic, string location)
        {
            this.id = id;
            this.name = name;
            this.price = price;
            this.category = category;
            this.press = press;
            this.totalAmount = total;
            this.loanAmount = loan;
            this.pic = pic;
            this.location = location;
        }

        public T_book(int id, string name, string price, string category,
            string press, string total, string pic, string location)
        {
            this.id = id;
            this.name = name;
            this.price = price;
            this.category = category;
            this.press = press;
            this.totalAmount = total;
            this.loanAmount = "0";
            this.pic = pic;
            this.location = location;
        }

    }
}
