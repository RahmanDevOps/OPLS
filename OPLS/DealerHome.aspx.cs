using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace OPLS
{
    public partial class DealerHome : System.Web.UI.Page
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
                Label1.Text = str1;
                

            }

            sqlcon.Close();


            sqlcon.Open();

            string name2 = ("select Count(Name) as cn from YarnOrders where Dealer = '" + Label1.Text + "' ");
            SqlCommand cmd2 = new SqlCommand(name2, sqlcon);
            SqlDataReader sdr2 = cmd2.ExecuteReader();

            while (sdr2.Read())
            {

                Label3.Text = sdr2["cn"].ToString();

            }

            sqlcon.Close();

          
        }
    }
}