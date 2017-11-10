using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class T_bookID
    {
        private string book_id;
        private string ISBN;
        private int inLibrarain;

        public string Book_id
        {
            get { return book_id; }
            set { book_id = value; }
        }

        public int  InLibrarain
        {
            get { return inLibrarain; }
            set { inLibrarain = value; }
        }



        public string iSBN
        {
            get { return ISBN; }
            set { ISBN = value; }
        }

        public T_bookID()
        {

        }

        public T_bookID(string id, string isbn)
        {
            book_id = id;
            ISBN = isbn;
        }
    }
}
