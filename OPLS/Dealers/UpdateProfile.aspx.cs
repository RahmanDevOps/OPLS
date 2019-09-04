using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace OPLS.Dealers
{
    public partial class UpdateProfile : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            sqlcon.Open();
            string namel = ("select * from DealerRegister where RID = '" + Session["RID"] + "' ");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();

            while (sdrl.Read())
            {

                TextBox1.Text = sdrl["RID"].ToString();
                
               

            }

            sqlcon.Close();

            }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pic = "/upload/" + FileUpload1.FileName;


            FileUpload1.SaveAs(Server.MapPath("/upload/" + FileUpload1.FileName));

            string cmd = "UPDATE DealerRegister SET Name ='" + TextBox2.Text + "' , Email ='" + TextBox3.Text + "' , Mobile ='" + TextBox4.Text + "' , Address ='" + TextBox2.Text + "' ,  Pic ='" + pic + "' where RID = '" + Session["RID"] + "'";


            SqlCommand sqlcmd = new SqlCommand(cmd, sqlcon);
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();
            {
                Label1.Text = " Profile updated successfully";
            }

            sqlcon.Close();

        }

            

        }
    }
