using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Filmtavsiyevedegerlendirme
{
    public partial class YüksekPuanliFilmler : System.Web.UI.Page
    {
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["FilmID"] = GridView1.SelectedValue;
        }
    }
}

