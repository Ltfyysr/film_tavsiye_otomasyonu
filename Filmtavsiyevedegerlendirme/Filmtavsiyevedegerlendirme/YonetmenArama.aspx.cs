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
    public partial class YonetmenArama : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            DataSet filmDS = DBIslemleri.YonetmenCek(TextBox1.Text);
            DropDownList1.DataTextField = "YonetmenAdi";
            DropDownList1.DataValueField = "YonetmenID";
            DropDownList1.DataSource = filmDS.Tables[0];
            DropDownList1.DataBind();

            Session["YonetmenID"] = DropDownList1.SelectedValue;

            HyperLink1.Visible = true;
        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataSet filmDS = DBIslemleri.YonetmenCek(TextBox1.Text);
            DropDownList1.DataTextField = "YonetmenAdi";
            DropDownList1.DataValueField = "YonetmenID";
            DropDownList1.DataSource = filmDS.Tables[0];
            DropDownList1.DataBind();

            Session["YonetmenID"] = DropDownList1.SelectedValue;

            HyperLink1.Visible = true;
        }
    }
}