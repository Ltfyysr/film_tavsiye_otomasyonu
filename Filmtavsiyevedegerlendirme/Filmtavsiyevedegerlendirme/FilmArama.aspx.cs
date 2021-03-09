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
    public partial class FilmArama : System.Web.UI.Page
    {
        static string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\LUTFİYE\Documents\Downloads\Ders Notları\c#\G4\Filmtavsiyevedeğerlendirme\Filmtavsiyevedeğerlendirme.mdf;Integrated Security=True;Connect Timeout=30";
        static SqlConnection baglanti = new SqlConnection(conString);
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            DataSet filmDS = DBIslemleri.FilmCek(TextBox1.Text);
            DropDownList1.DataTextField = "FilmAdi";
            DropDownList1.DataValueField = "FilmID";
            DropDownList1.DataSource = filmDS.Tables[0];
            DropDownList1.DataBind();

            Session["FilmID"] = DropDownList1.SelectedValue;

            HyperLink1.Visible = true;
        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataSet filmDS = DBIslemleri.FilmCek(TextBox1.Text);
            DropDownList1.DataTextField = "FilmAdi";
            DropDownList1.DataValueField = "FilmID";
            DropDownList1.DataSource = filmDS.Tables[0];
            DropDownList1.DataBind();

            Session["FilmID"] = DropDownList1.SelectedValue;

            HyperLink1.Visible = true;
        }

    }
}