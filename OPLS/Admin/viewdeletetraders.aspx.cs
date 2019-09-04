using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Configuration;

namespace OPLS.Admin
{
    public partial class viewdeletetraders : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sqlcon.Open();

            SqlCommand cmd1 = new SqlCommand("Delete from TraderRegister where ID = '" + TextBox2.Text + "' ", sqlcon);
            SqlDataReader sdr1 = cmd1.ExecuteReader();
            while (sdr1.Read())
            {


            }

            sqlcon.Close();



            Server.Transfer("/Admin/deletetrader.aspx");
        }
    }
}