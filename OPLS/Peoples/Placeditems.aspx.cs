﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace OPLS.Peoples
{
    public partial class Placeditems : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            String getdata1 = "select * from YarnOrders where Username = '" + Session["Username"] + "' AND Boolean = 'True' ";

            SqlCommand cmd1 = new SqlCommand(getdata1, sqlcon);
            sqlcon.Open();
            cmd1.ExecuteNonQuery();
            Session[""] = null;
            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            da1.Fill(dt1);
            d1.DataSource = dt1;
            d1.DataBind();

            sqlcon.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string cmd = "UPDATE YarnOrders SET Boolean ='" + false + "'  where ID = '" + TextBox1.Text + "'";


            SqlCommand sqlcmd = new SqlCommand(cmd, sqlcon);
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();
            {
                Response.Redirect("~/Peoples/cancel.aspx");
            }

            sqlcon.Close();
    
        
        
        }
    }
}