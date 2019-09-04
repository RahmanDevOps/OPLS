using System;
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
    public partial class peoplehome : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            sqlcon.Open();
            string namel = ("select * from PeoplerRegister where Username = '" + Session["Username"] + "' ");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();

            while (sdrl.Read())
            {
                Label6.Text = sdrl["Name"].ToString();

                Label1.Text = sdrl["Username"].ToString();
                Label2.Text = sdrl["Name"].ToString();
                Label3.Text = sdrl["Emaill"].ToString();
                Label4.Text = sdrl["Mob"].ToString();
                Label5.Text = sdrl["Address"].ToString();

                Image1.ImageUrl = sdrl["pic"].ToString();

            }

            sqlcon.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}