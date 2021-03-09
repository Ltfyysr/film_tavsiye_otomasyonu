using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Filmtavsiyevedegerlendirme
{
    public partial class KullaniciGiris : System.Web.UI.Page
    {
        static string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\LUTFİYE\Documents\Downloads\Ders Notları\c#\G4\Filmtavsiyevedeğerlendirme\Filmtavsiyevedeğerlendirme.mdf;Integrated Security=True;Connect Timeout=30";
        static SqlConnection baglanti = new SqlConnection(conString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string adı = TextBox1.Text;
            string Sifre = TextBox2.Text;
            string sql = "Select * from KullaniciTanim where KullaniciAdi='" + adı + "'and Sifre='" + Sifre + "'";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            baglanti.Open();
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                baglanti.Close();
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Başlık", "<script>alert('Giriş Başarılı');</script>");
                Response.Redirect("Anasayfa.aspx");

            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Başlık", "<script>alert('Giriş Başarısız Tekrar Deneyin');</script>");
                baglanti.Close();
            }
            baglanti.Close();


        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Anasayfa.aspx");
        }

    }
}
