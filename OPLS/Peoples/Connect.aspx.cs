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
    public partial class Connect : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

     
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

       

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Label1.Text = "";
            sqlcon.Open();
            string namel = ("select * from TraderRegister where RID = '" + TextBox1.Text + "' ");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();

            while (sdrl.Read())
            {
                TextBox2.Text = sdrl["Name"].ToString();
                TextBox3.Text = sdrl["Address"].ToString();
                TextBox4.Text = sdrl["Mob"].ToString();

                Label1.Text = "RID Found";
                Label1.ForeColor = System.Drawing.Color.Yellow;
                Button1.Enabled = true;

            }
            if (Label1.Text != "RID Found")
            {
                Label1.Text = "RID Not Found";
                Label1.ForeColor = System.Drawing.Color.Red;
                Button1.Enabled = false;
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
            }

            sqlcon.Close();


            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand sqlcmd = new SqlCommand("insert into TraderRequest(RID,Name,Address,Mobile, Requirment) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", sqlcon);
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();

            {

                Label2.Text = "Your Request is submitted successfuly..";
                TextBox5.Text = "";

            }

            sqlcon.Close();
        }
    }
}