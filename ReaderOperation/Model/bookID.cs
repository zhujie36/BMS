using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class bookID
    {
        private string book_id;
        private string ISBN;

        public string Book_id
        {
            get { return book_id; }
            set { book_id = value; }
        }

        public string iSBN
        {
            get { return ISBN; }
            set { ISBN = value; }
        }

        public bookID()
        {

        }

        public bookID(string id, string isbn)
        {
            book_id = id;
            ISBN = isbn;
        }
    }
}
