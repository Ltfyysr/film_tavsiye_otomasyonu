using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Filmtavsiyevedegerlendirme
{
    public partial class GirisEkraniaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("YoneticiGiris.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("KullaniciGiris.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("KullaniciKayit.aspx");
        }
    }
}