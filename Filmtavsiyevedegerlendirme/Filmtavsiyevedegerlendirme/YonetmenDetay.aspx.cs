using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Filmtavsiyevedegerlendirme
{
    public partial class YonetmenDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            int yazarID = Convert.ToInt32(Session["YonetmenID"]);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["FilmID"] = GridView1.SelectedValue;
        }

    }
}