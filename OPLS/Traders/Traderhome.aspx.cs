using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace OPLS.Traders
{
    public partial class Traderhome : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        string str1;
        protected void Page_Load(object sender, EventArgs e)
        {
            sqlcon.Open();
            string namel = ("select Name from TraderRegister where RID = '" + Session["RID"] + "' ");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();

            while (sdrl.Read())
            {

                str1 = sdrl["Name"].ToString();
                Label1.Text = str1;


            }

            sqlcon.Close();

        }
    }
}