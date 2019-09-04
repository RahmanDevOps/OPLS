using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace OPLS
{
    public partial class PeoplesRegister : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "Yarn Dealers")
            {
                Response.Redirect("DealerRegister.aspx");
            }
            else if (DropDownList1.Text == "Traders")
            {
                Response.Redirect("TraderRegister.aspx");
            }
            else
            {
                Response.Redirect("PeoplesRegister.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            SqlCommand sqlcmd = new SqlCommand("insert into PeoplerRegister(Username,Password,Emaill,Name,Aadhar,City,Address,Mob) values('" + TextBox6.Text + "','" + TextBox9.Text + "','" + TextBox8.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", sqlcon);
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();

            {

                Label1.Text = "Registered Succesfully";

            }

            sqlcon.Close();
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            Label2.Text = "";
            sqlcon.Open();
            string namel = ("select Username from PeoplerRegister where Username = '" + TextBox6.Text + "' ");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();

            while (sdrl.Read())
            {

                Label2.Text = "Username Already Exits.";
                Label2.ForeColor = System.Drawing.Color.Red;
                Button1.Enabled = false;

            }
            sqlcon.Close();



            if (Label2.Text == "Username Already Exits.")
            {
                Button1.Enabled = false;
            }
            if (Label2.Text != "Username Already Exits.")
            {
                Label2.Text = "Username Available";
                Label2.ForeColor = System.Drawing.Color.Yellow;
                Button1.Enabled = true;
            }
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox2.Text = "";
            TextBox6.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox6.Text = "";
            TextBox4.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
            Label2.Text = "";
        }
    }
}