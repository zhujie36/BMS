using System;
using System.IO;
using System.Net;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.Web.Script.Serialization;

namespace BLL
{
    public static class BookApi
    {
        //根据ISBN码从豆瓣API获取书籍详细信息
        public static bool getInfo(string isbn, out BookInfo bookInfo, out string json)
        {
            try
            {
                //豆瓣API
                string uri = "https://api.douban.com/v2/book/isbn/" + isbn;
                //获取书籍详细信息，Json格式
                json = doGet(uri, "utf-8");
                //将获取到的Json格式的文件转换为定义的类
                bookInfo = toMap(json);
                return true;
            }
            catch
            {
                //信息获取失败
                bookInfo = null;
                json = "";
                return false;
            }
        }

        //HTTP的GET请求，获取书籍详细信息
        private static string doGet(string url, string charset)
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
            request.Method = "GET";
            request.ContentType = "text/html;charset=UTF-8";
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            if (response != null)
            {
                Stream myResponseStream = response.GetResponseStream();
                StreamReader myStreamReader = new StreamReader(myResponseStream, System.Text.Encoding.GetEncoding(charset));
                string retString = myStreamReader.ReadToEnd();
                myStreamReader.Close();
                myResponseStream.Close();
                return retString;
            }
            throw new Exception();
        }

        //HTTP获取图片，获取书籍封面
        public static Image doGetImage(string url)
        {
            WebRequest request = WebRequest.Create(url);
            WebResponse response = request.GetResponse();
            if (response != null)
            {
                Stream stream = response.GetResponseStream();
                return Image.FromStream(stream);
            }
            return drawCover();
        }

        //绘制封面
        private static Bitmap drawCover()
        {
            Bitmap image = new Bitmap(102, 145);
            Graphics g = Graphics.FromImage(image);
            g.Clear(Color.Silver);
            StringFormat format = new StringFormat { Alignment = StringAlignment.Center };
            g.TextRenderingHint = System.Drawing.Text.TextRenderingHint.AntiAlias;
            //封面显示内容：暂无封面
            g.DrawString("暂无封面", new Font("黑体", 12f, FontStyle.Regular), Brushes.Black, 51, 50, format);
            return image;
        }

        //Json解析
        private static BookInfo toMap(string jsonString)
        {
            //实例化JavaScriptSerializer类的新实例
            JavaScriptSerializer jss = new JavaScriptSerializer();
            try
            {
                //将指定的 JSON 字符串转换为 Dictionary<string, object> 类型的对象
                return jss.Deserialize<BookInfo>(jsonString);
            }
            catch
            {
                return null;
            }
        }
    }

    //豆瓣API返回的信息很多，可以根据自己的需要重新定义该类
    public class BookInfo
    {
        //标题
        public string title { get; set; }
        //作者
        public string[] author { get; set; }
        //出版社
        public string publisher { get; set; }
        //封面图片的url
        public string image { get; set; }
        //isbn10
        public string isbn10 { get; set; }
        //isbn13
        public string isbn13 { get; set; }
        //出版日期
        public string pubdate { get; set; }
        //概述
        public string summary { get; set; }
        //页数
        public string pages { get; set; }
        //价格
        public string price { get; set; }
        //获取失败的返回信息
        public string msg { get; set; }
        public string code { get; set; }
    }
}
