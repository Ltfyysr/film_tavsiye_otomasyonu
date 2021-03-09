﻿using System;
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
    public partial class KullanıcıArama: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            DataSet KullaniciDS = DBIslemleri.KullaniciCek(TextBox1.Text);
            DropDownList1.DataTextField = "Isim";
            DropDownList1.DataValueField = "KullaniciID";
            DropDownList1.DataSource = KullaniciDS.Tables[0];
            DropDownList1.DataBind();

            Session["KullaniciID"] = DropDownList1.SelectedValue;

            HyperLink1.Visible = true;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataSet kullaniciDS = DBIslemleri.KullaniciCek(TextBox1.Text);
            DropDownList1.DataTextField = "Isim";
            DropDownList1.DataValueField = "KullaniciID";
            DropDownList1.DataSource = kullaniciDS.Tables[0];
            DropDownList1.DataBind();

            Session["KullaniciID"] = DropDownList1.SelectedValue;

            HyperLink1.Visible = true;
        }
    }
}
