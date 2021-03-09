using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Filmtavsiyevedegerlendirme
{
    public partial class FilmDetay : System.Web.UI.Page
    {
        static string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\LUTFİYE\Documents\Downloads\Ders Notları\c#\G4\Filmtavsiyevedeğerlendirme\Filmtavsiyevedeğerlendirme.mdf;Integrated Security=True;Connect Timeout=30";
        
        static SqlConnection baglanti = new SqlConnection(conString);
        protected void Page_Load(object sender, EventArgs e)
        {
            

            int FilmID = Convert.ToInt32(Session["FilmID"]);

            
            baglanti.Open();
            string sql = "select *  from FilmTanim where FilmID=" + FilmID;
            SqlCommand komut = new SqlCommand(sql, baglanti);

            SqlDataReader veriokuyucu = komut.ExecuteReader();

            while (veriokuyucu.Read())
            {
                Image1.ImageUrl = "~/App_Data/image/" + veriokuyucu[0].ToString();
                Image1.Width = 100;
                Image1.Height = 100;
            }

            veriokuyucu.Close();
            baglanti.Close();
        }
      
    }
}