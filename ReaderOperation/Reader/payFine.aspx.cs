using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLL;
namespace Reader
{
    public partial class payFine : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (all.ID == null)
            {
                Response.Redirect("login.aspx");
            }
            Panel2.Visible = false;
            if (!IsPostBack)
            {
                string borrowID = Request.QueryString["borrowID"];
                if (borrowID != null)
                {
                    BorrowList borrow = BorrowListBLL.GetDataByBorrowID(int.Parse(borrowID));

                    string book = borrow.BookID;
                    string stu = borrow.Reader;
                    string type = Request.QueryString["type"].Trim();
                    bool result = BorrowListBLL.bookReturn(book);
                      Panel1.Visible = true;
                      TextBox1.Text = stu;
                      if (result == false)
                      {
                          Panel2.Visible = true;
                          Label2.Text = "database modify failed!";
                      }
                      else
                      {
                          float bp = float.Parse(T_bookBLL.GetDataByID(T_bookIDBLL.GetISBNByID(book)).Price);
                          T_Reader reader = T_ReaderBLL.GetDataByID(stu);
                        bool r2;
                          if (type.Equals("damage"))
                          {                           
                              reader.R_state += bp/2;
                           r2 = BorrowListBLL.setMoney(int.Parse(borrowID), bp / 2);
                        }
                          else
                          {
                              reader.R_state += bp;
                            r2 = BorrowListBLL.setMoney(int.Parse(borrowID), bp);
                            bool r3 = T_bookIDBLL.Delete(T_bookIDBLL.GetDataByID(book));
                            if(!r3)
                            {
                                Panel2.Visible = true;
                                Label2.Text = "delete book information failed!";
                            }
                        }
                          bool r1 = T_ReaderBLL.Update(reader);
                        
                          if (!r1 || !r2)
                          {
                              Panel2.Visible = true;
                              Label2.Text = "database modify failed!";
                          }
                          TextBox2.Text = reader.R_state.ToString();
                          TextBox2.Enabled = false;
                      }
                      }
                      else
                      {
                          string name = Request.QueryString["name"];
                          T_Reader reader = T_ReaderBLL.GetDataByID(name);
                          if(name != null)
                          {
                              Panel1.Visible = true;
                              TextBox2.Text = reader.R_state.ToString();
                          }
                          else
                          {
                              Panel1.Visible = false;
                          }
                }



            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text.Trim();
            bool result = T_ReaderBLL.setState(name, 0);
            if(result)
            {
                Response.Write("<script>alert('pay succeed!')</script>");
                Response.Write("<script>javascript:location.href='IndexLibrarian.aspx?'</script>");
            }
            else
            {
                Response.Write("<script>alert('pay fine failed!')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexLibrarian.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text.Trim();
            T_Reader reader = T_ReaderBLL.GetDataByID(name);
            if (reader != null)
            {
                Panel1.Visible = true;
                TextBox2.Text = reader.R_state.ToString();
            }
            else
            {
                //Response.Write("<script>alert('please input true stu_id!')</script>");
                Panel2.Visible = true;
                Label2.Text = "this student doesn't registered!";
            }
        }
    }
}