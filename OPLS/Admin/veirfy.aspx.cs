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
    public partial class veirfy : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        
        protected void Page_Load(object sender, EventArgs e)
        {
           

            String str = Request.QueryString["id"];

            string cmd = "UPDATE TraderRegister SET Boolean ='" + true + "' where ID = '" + str + "' ";


            SqlCommand sqlcmd = new SqlCommand(cmd, sqlcon);
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();
            {
                Label1.Text = " Trader Verified successfully";
            }

            sqlcon.Close();


           
        }
    }
}