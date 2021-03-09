using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Filmtavsiyevedegerlendirme
{
    public partial class KullaniciKayit : System.Web.UI.Page
    {
        static string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\LUTFİYE\Documents\Downloads\Ders Notları\c#\G4\Filmtavsiyevedeğerlendirme\Filmtavsiyevedeğerlendirme.mdf;Integrated Security=True;Connect Timeout=30";
        static SqlConnection baglanti = new SqlConnection(conString);

        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 1960; i <= DateTime.Now.Year; i++)
            {
                DropDownList2.Items.Add(i.ToString());
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            byte[] resim = FileUpload1.FileBytes;
            if (FileUpload1.HasFile)
            {
                SqlCommand komut = new SqlCommand("INSERT INTO Kullanici(KullaniciAdi,Sifre,Isim,Soyisim,Cinsiyet,DogumTarihi,Resim) Values(@padi,@psifre,@pisim,@psisim,@pcins,@pdogum,@presim) ", baglanti);
                baglanti.Open();
                komut.Parameters.AddWithValue("@padi", TextBox1.Text);
                komut.Parameters.AddWithValue("@psifre", TextBox2.Text);
                komut.Parameters.AddWithValue("@pisim", TextBox3.Text);
                komut.Parameters.AddWithValue("@psisim", TextBox4.Text);
                komut.Parameters.AddWithValue("@kcins", DropDownList1.SelectedItem.Text);
                komut.Parameters.AddWithValue("@pdogum", DropDownList2.SelectedItem.Text);
                komut.Parameters.AddWithValue("@presim", resim);
                komut.ExecuteNonQuery();
                baglanti.Close();

            }
        }
    }
}
