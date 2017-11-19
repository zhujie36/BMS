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
using GenCode128;
using BLL;
using System.Drawing;
using System.IO;

namespace Reader
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Code39 _Code39 = new Code39();

            _Code39.Height = 120;
            _Code39.Magnify = 1;
            _Code39.ViewFont = new Font("宋体", 20);


            System.Drawing.Image _CodeImage = _Code39.GetCodeImage("123ABC4567890FWF", Code39.Code39Model.Code39Normal, true);

            //System.IO.MemoryStream _Stream = new System.IO.MemoryStream();
            //_CodeImage.Save(_Stream, System.Drawing.Imaging.ImageFormat.Jpeg);
            //_CodeImage.Save("C:/1.jpeg");
            //_CodeImage.Save(@"C:/1.BMP");
            //_CodeImage.Save(@"C:/1.GIF");
            // string Savepath = Path.Combine(@"images", "1.JPG");



            //Response.Write("13" + "\r\n");
           
           // _CodeImage.Save(@"images\ww.jpg", System.Drawing.Imaging.ImageFormat.Jpeg);
            /*
            Response.ContentType = "image/jpeg";
            Response.Clear();
            Response.BufferOutput = true;
            Response.BinaryWrite(_Stream.GetBuffer());
            Response.Write("sadklkas<br>");
            Response.BinaryWrite(_Stream.GetBuffer());
            Response.Flush();*/
        }

    }
}

