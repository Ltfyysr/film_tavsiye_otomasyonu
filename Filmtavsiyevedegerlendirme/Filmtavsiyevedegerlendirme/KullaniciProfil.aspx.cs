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
    public partial class KullaniciProfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int kulid = Convert.ToInt32(Session["KullaniciID"]);

            SqlConnection baglanti = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\LUTFİYE\Desktop\Filmtavsiyevedegerlendirme\Filmtavsiyevedegerlendirme.mdf;Integrated Security=True;Connect Timeout=30");
           
            baglanti.Open();
            string sql = "select Resim from KullaniciTanim where KullaniciID=" + kulid;
            SqlCommand komut = new SqlCommand(sql, baglanti);

            SqlDataReader veriokuyucu = komut.ExecuteReader();

            while (veriokuyucu.Read())
            {
                Image1.ImageUrl = "~/App_Data/kullaniciresim/" + veriokuyucu[0].ToString();
                Image1.Width = 100;
                Image1.Height = 100;
            }

            veriokuyucu.Close();
            baglanti.Close();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }    
}
    
