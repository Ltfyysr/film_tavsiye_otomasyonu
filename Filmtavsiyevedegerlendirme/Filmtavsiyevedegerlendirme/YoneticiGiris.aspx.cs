using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Filmtavsiyevedegerlendirme
{
    public partial class YoneticiGiris : System.Web.UI.Page
    {
        static string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\LUTFİYE\Documents\Downloads\Ders Notları\c#\G4\Filmtavsiyevedeğerlendirme\Filmtavsiyevedeğerlendirme.mdf;Integrated Security=True;Connect Timeout=30";
        static SqlConnection baglanti = new SqlConnection(conString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string adi = TextBox1.Text;
            string sifre = TextBox2.Text;
            string sql = "Select * from Yonetici where yoneticiAdi='" + adi + "'and Sifre='" + sifre + "'";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            baglanti.Open();
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                baglanti.Close();
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Başlık", "<script>alert('Giriş Başarılı');</script>");
                Response.Redirect("YoneticiModulu.aspx");

            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Başlık", "<script>alert('Giriş Başarısız Tekrar Deneyin');</script>");
                baglanti.Close();
            }
            baglanti.Close();
        }
    }
}