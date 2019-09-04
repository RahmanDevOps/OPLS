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
    public partial class TraderProfile : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            sqlcon.Open();
            string namel = ("select * from TraderRegister where RID = '" + Session["RID"] + "' ");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();

            while (sdrl.Read())
            {

                Label1.Text = sdrl["RID"].ToString();
                Label2.Text = sdrl["Name"].ToString();
                Label3.Text = sdrl["Email"].ToString();
                Label4.Text = sdrl["Mob"].ToString();
                Label5.Text = sdrl["Address"].ToString();

                Image1.ImageUrl = sdrl["Pic"].ToString();

            }

            sqlcon.Close();
            if (Image1.ImageUrl == "")
            {
                FileUpload1.Visible = true;
                Button3.Visible = true;
            }
            else
            {
                FileUpload1.Visible = false;
                Button3.Visible = false;

            }

            

        }

       

        protected void Button3_Click(object sender, EventArgs e)
        {
            string pic = "/upload/" + FileUpload1.FileName;


            FileUpload1.SaveAs(Server.MapPath("/upload/" + FileUpload1.FileName));

            string cmd = "UPDATE TraderRegister SET Pic ='" + pic + "' where RID = '" + Session["RID"] + "'";

            SqlCommand sqlcmd = new SqlCommand(cmd, sqlcon);
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();

            sqlcon.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

       
        
    }
}