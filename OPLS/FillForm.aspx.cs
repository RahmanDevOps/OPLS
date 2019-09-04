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
    public partial class FillForm : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            Label3.Text = "";
            sqlcon.Open();
            string namel = ("select * from PeoplerRegister where Emaill = '" + TextBox4.Text + "' ");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();

            while (sdrl.Read())
            {

                TextBox4.Text = sdrl["Emaill"].ToString();


                Label5.Text = "Email Found";
                Label5.ForeColor = System.Drawing.Color.Yellow;
                Button3.Enabled = true;

            }
            if (Label5.Text != "Email Found")
            {
                Label5.Text = "Email Not Found";
                Label5.ForeColor = System.Drawing.Color.Red;
                Button3.Enabled = false;
                TextBox4.Text = "";

            }

            sqlcon.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            

            Response.Redirect("AfterOrder.aspx");
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList16_SelectedIndexChanged(object sender, EventArgs e)
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

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Label2.Text = "";
            sqlcon.Open();
            string namel = ("select * from PeoplerRegister where Username = '" + TextBox1.Text + "' ");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();

            while (sdrl.Read())
            {
                TextBox1.Text = sdrl["Username"].ToString();

                Label4.Text = "Username Found";
                Label4.ForeColor = System.Drawing.Color.Yellow;
                Button3.Enabled = true;

            }
            if (Label4.Text != "Username Found")
            {
                Label4.Text = "Username Not Found";
                Label4.ForeColor = System.Drawing.Color.Red;
                Button3.Enabled = false;
                TextBox1.Text = "";

            }

            sqlcon.Close();

        }
    }
}