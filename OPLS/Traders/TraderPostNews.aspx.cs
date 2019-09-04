using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace OPLS.Traders
{
    public partial class TraderPostNews : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sqlcon.Open();

            SqlCommand cmd = new SqlCommand("insert into TraderNews values ( '" + TextBox1.Text + "' , '" + Session["RID"] + "')", sqlcon);

            cmd.ExecuteNonQuery();

            Label1.Text = " Your Notice has been Posted & This will be shown on front page. ";

            TextBox1.Text = "";

            sqlcon.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
        }
    }
}