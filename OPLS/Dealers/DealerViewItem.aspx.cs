using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace OPLS.Dealers
{
    public partial class DealerViewItem : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        string str1;
        protected void Page_Load(object sender, EventArgs e)
        {

            sqlcon.Open();
            string namel = ("select Name from DealerRegister where RID = '" + Session["RID"] + "' ");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();

            while (sdrl.Read())
            {

                str1 = sdrl["Name"].ToString();
               
            }

          


            sqlcon.Close();

            sqlcon.Open();

            String getdata = "select * from YarnOrders where Dealer = '" + str1 + "' order by id Desc ";
            SqlCommand cmd = new SqlCommand(getdata, sqlcon);

            cmd.ExecuteNonQuery();
            Session[""] = null;
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            d1.DataSource = dt;
            d1.DataBind();

            sqlcon.Close();
            
        }
         
  
        }
   }