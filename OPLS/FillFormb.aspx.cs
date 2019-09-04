using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace OPLS
{
    public partial class FillFormb : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            Label4.Text = "";
            sqlcon.Open();
            string namel = ("select * from PeoplerRegister where Emaill = '" + TextBox4.Text + "' ");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();

            while (sdrl.Read())
            {

                TextBox4.Text = sdrl["Emaill"].ToString();


                Label4.Text = "Email Found";
                Label4.ForeColor = System.Drawing.Color.Yellow;
                Button1.Enabled = true;

            }
            if (Label4.Text != "Email Found")
            {
                Label4.Text = "Email Not Found";
                Label4.ForeColor = System.Drawing.Color.Red;
                Button1.Enabled = false;
                TextBox4.Text = "";

            }

            sqlcon.Close();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Label3.Text = "";
            sqlcon.Open();
            string namel = ("select * from PeoplerRegister where Username = '" + TextBox1.Text + "' ");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();

            while (sdrl.Read())
            {
                TextBox1.Text = sdrl["Username"].ToString();

                Label3.Text = "Username Found";
                Label3.ForeColor = System.Drawing.Color.Yellow;
                Button1.Enabled = true;

            }
            if (Label3.Text != "Username Found")
            {
                Label3.Text = "Username Not Found";
                Label3.ForeColor = System.Drawing.Color.Red;
                Button1.Enabled = false;
                TextBox1.Text = "";

            }

            sqlcon.Close();

        }

        protected void DropDownList16_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList14_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList13_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList16_SelectedIndexChanged1(object sender, EventArgs e)
        {
            if (DropDownList16.Text == "1")
            {
                Response.Redirect("FillFormC.aspx");
            }
            else if (DropDownList16.Text == "2")
            {
                Response.Redirect("FillFormb.aspx");
            }
            else
            {
                Response.Redirect("FillForm.aspx");
            }
        }
    }
}