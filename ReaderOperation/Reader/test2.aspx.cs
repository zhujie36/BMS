using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.IO;
using System.Text;

namespace Reader
{
    public partial class test2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Image img = (Image)e.Item.FindControl("imgid");
            Image1.ImageUrl = "test.aspx?num=1234";
            if (!IsPostBack)
            {

                if (Session["table"] != null)
                {
                    DataSet ds = (DataSet)Session["table"];
                    DataList1.DataSource = ds.Tables[0].DefaultView;
                    DataList1.DataBind();
                }
            }
        }
        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Image img = (Image)e.Item.FindControl("imgid");
                img.ImageUrl = "test.aspx?num=" + "Odf" + Convert.ToString(DataBinder.Eval(e.Item.DataItem, "编号"));
                Label lbl = (Label)e.Item.FindControl("lbl");
                lbl.Text = "Odf" + Convert.ToString(DataBinder.Eval(e.Item.DataItem, "编号"));
            }
        }
        protected void btndaochu_Click(object sender, EventArgs e)
        {
            ExportData("application/ms-word", "Word.doc");
        }
        private void ExportData(string FileType, string FileName)
        {
            Response.Charset = "GB2312";
            Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");

            Response.AppendHeader("Content-Disposition", "attachment;filename=" + HttpUtility.UrlEncode(FileName, Encoding.UTF8).ToString());
            Response.ContentType = FileType;
            this.EnableViewState = false;
            StringWriter tw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(tw);


            //ExpertControl(this, DocumentType.Word); 

            this.aa.RenderControl(hw);
            Response.Write(tw.ToString());
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
    }
}