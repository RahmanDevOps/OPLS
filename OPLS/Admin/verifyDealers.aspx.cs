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
    public partial class verifyDealers : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            String getdata = "select * from DealerRegister where Boolean = 'False' order by ID Desc ";
            SqlCommand cmd = new SqlCommand(getdata, sqlcon);
            sqlcon.Open();
            cmd.ExecuteNonQuery();
            Session[""] = null;
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            d1.DataSource = dt;
            d1.DataBind();
        }
    }
}