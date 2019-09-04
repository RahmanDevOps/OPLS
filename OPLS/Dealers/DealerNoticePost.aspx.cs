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
    public partial class DealerNoticePost : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        string str;
        protected void Page_Load(object sender, EventArgs e)
        {
            sqlcon.Open();
            string namel = ("select Name from DealerRegister where RID = '" + Session["RID"] + "' ");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();


            while (sdrl.Read())
            {

                str = sdrl["Name"].ToString();
            }
            sqlcon.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            Response.Redirect("Dealers/ViewNews.aspx");
           


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            sqlcon.Open();

            SqlCommand cmd = new SqlCommand("insert into News values ('" + str + "','" + TextBox1.Text + "' , '" + Session["RID"] + "')", sqlcon);

            cmd.ExecuteNonQuery();

            Label1.Text = " Your Notice has been Posted & This will be shown on front page. ";

            TextBox1.Text = "";

            sqlcon.Close();
        }
    }
}