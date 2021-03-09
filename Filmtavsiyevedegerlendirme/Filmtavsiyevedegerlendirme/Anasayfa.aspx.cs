using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Filmtavsiyevedegerlendirme
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        static string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\LUTFİYE\Documents\Downloads\Ders Notları\c#\G4\Filmtavsiyevedeğerlendirme\Filmtavsiyevedeğerlendirme.mdf;Integrated Security=True;Connect Timeout=30";
        static SqlConnection baglanti = new SqlConnection(conString);
        protected void Page_Load(object sender, EventArgs e)
        {
            int kid = Convert.ToInt32(Session["kID"]);

            DataSet oneri1 = DBIslemleri.Oneri1(kid);

            GridView1.DataSource = oneri1.Tables[0];
            GridView1.DataBind();

            DataSet oneri2 = DBIslemleri.Oneri2(kid);

            GridView2.DataSource = oneri2.Tables[0];
            GridView2.DataBind();

            DataSet FilmOneri1 = DBIslemleri.FilmOneri1(kid);

            GridView3.DataSource = FilmOneri1.Tables[0];
            GridView3.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}