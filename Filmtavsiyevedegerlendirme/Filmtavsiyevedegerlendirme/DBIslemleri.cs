using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Filmtavsiyevedegerlendirme
{
    
    public class DBIslemleri
    {
        static string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=\Users\LUTFİYE\Documents\Downloads\Ders Notları\c#\G4\Filmtavsiyevedeğerlendirme\Filmtavsiyevedeğerlendirme.mdf;Integrated Security=True;Connect Timeout=30";
        static SqlConnection baglanti = new SqlConnection(conString);
       
        public static bool YoneticiGiris(string kadi, string sifre)
        {
            string sql = "select * from YöneticiTanım where KullaniciAdi=@pkadi and Sifre=@psifre";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("pkadi", kadi);
            komut.Parameters.AddWithValue("psifre", sifre);

            baglanti.Open();
            bool varMi = false;
            SqlDataReader okuyucu = komut.ExecuteReader();
            if (okuyucu.HasRows)
                varMi = true;
            okuyucu.Close();
            baglanti.Close();
            return varMi;
        }

    

        public static DataSet FilmCek(string ad)
        {
            string sql = "select * from FilmTanim where FilmAdi like @padi +'%'";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("padi", ad);
            SqlDataAdapter adaptor = new SqlDataAdapter();
            adaptor.SelectCommand = komut;
            DataSet sonucAra = new DataSet();
            baglanti.Open();
            adaptor.Fill(sonucAra);
            baglanti.Close();
            return sonucAra;
        }
        public static DataSet SenaristCek(string ad)
        {
            string sql = "select * from SenaristTanim where SenaristAdi like @padi +'%'";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("padi", ad);
            SqlDataAdapter adaptor = new SqlDataAdapter();
            adaptor.SelectCommand = komut;
            DataSet sonucAra = new DataSet();
            baglanti.Open();
            adaptor.Fill(sonucAra);
            baglanti.Close();
            return sonucAra;
        }
        public static DataSet YonetmenCek(string ad)
        {
            string sql = "select * from YonetmenTanim where YonetmenAdi like @padi +'%'";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("padi", ad);
            SqlDataAdapter adaptor = new SqlDataAdapter();
            adaptor.SelectCommand = komut;
            DataSet sonucAra = new DataSet();
            baglanti.Open();
            adaptor.Fill(sonucAra);
            baglanti.Close();
            return sonucAra;
        }
        public static DataSet KullaniciCek(string ad)
        {
            string sql = "select * from KullaniciTanim where Isim like @padi +'%'";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("padi", ad);
            SqlDataAdapter adaptor = new SqlDataAdapter();
            adaptor.SelectCommand = komut;
            DataSet sonucAra = new DataSet();
            baglanti.Open();
            adaptor.Fill(sonucAra);
            baglanti.Close();
            return sonucAra;
        }
      
        

       public static DataSet FilmDetayCek(string ıd)
            {
              
                SqlConnection baglanti = new SqlConnection(conString);
                SqlCommand komut = new SqlCommand("select * from FilmTanim where FilmID='" + ıd + "'", baglanti);
                SqlDataAdapter adaptor = new SqlDataAdapter(komut);
                DataSet filmler = new DataSet();
                baglanti.Open();
                adaptor.Fill(filmler);
                baglanti.Close();
                return filmler;

            }

        public static DataSet Oneri1(int kid)
        {
            string sql = "select TOP 5 FilmTanim.FilmAdi from FilmTanim, KullaniciArkadas, FilmIzlenme where FilmTanim.FilmID = FilmIzlenme.FilmID and FilmIzlenme.KullaniciID = KullaniciArkadas.KullaniciID and FilmIzlenme.KullaniciID not in (@kid) and FilmIzlenme.FilmID not in (11) order by RAND()";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("kid", kid);
            DataSet Oneri1 = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(Oneri1);
            baglanti.Close();
            return Oneri1;
        }

         public static DataSet Oneri2(int kid)
         { 
             string sql = "select TOP 5  FilmTanim.FilmAdi from FilmTanim,KullaniciArkadas , FilmPuan where FilmTanim.FilmID = FilmPuan.FilmID and FilmPuan.KullaniciID = KullaniciArkadas.KullaniciID and FilmPuan.KullaniciID not in (@kid) and FilmPuan.FilmID not in (11) order by RAND()";
             SqlCommand komut = new SqlCommand(sql, baglanti);
             komut.Parameters.AddWithValue("kid", kid);
             DataSet Oneri2 = new DataSet();
             SqlDataAdapter adaptor = new SqlDataAdapter(komut);
             baglanti.Open();
             adaptor.Fill(Oneri2);
             baglanti.Close();
             return Oneri2;

         }

        public static DataSet FilmOneri1(int kid)
        {
            string sql = "select TOP 10 FilmTanim.FilmAdi from FilmTanim, KullaniciTanim, FilmIzlenme where FilmTanim.FilmID = FilmIzlenme.FilmID and FilmIzlenme.KullaniciID = KullaniciTanim.KullaniciID and FilmIzlenme.KullaniciID not in (@kid) and FilmIzlenme.FilmID not in (11) order by RAND()";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("kid", kid);
            DataSet FilmOneri1 = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(FilmOneri1);
            baglanti.Close();
            return FilmOneri1;
        }
      
    }
}

