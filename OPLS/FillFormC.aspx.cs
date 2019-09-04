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
    public partial class FillFormC : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
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
               
                Label2.Text = "Username Found";
                Label2.ForeColor = System.Drawing.Color.Yellow;
                Button3.Enabled = true;

            }
            if (Label2.Text != "Username Found")
            {
                Label2.Text = "Username Not Found";
                Label2.ForeColor = System.Drawing.Color.Red;
                Button3.Enabled = false;
                TextBox1.Text = "";
                
            }

            sqlcon.Close();

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


                Label3.Text = "Email Found";
                Label3.ForeColor = System.Drawing.Color.Yellow;
                Button3.Enabled = true;

            }
            if (Label3.Text != "Email Found")
            {
                Label3.Text = "Email Not Found";
                Label3.ForeColor = System.Drawing.Color.Red;
                Button3.Enabled = false;
                TextBox4.Text = "";

            }

            sqlcon.Close();
        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand sqlcmd = new SqlCommand("insert into YarnOrders(Username,Email,Type,Dealer,Color,Brand,Quantity,Total_Price,Boolean) values('" + TextBox1.Text + "','" + TextBox4.Text + "','" + DropDownList17.Text + "' ,'" + DropDownList18.Text + "' ,'" + DropDownList19.Text + "' ,'" + DropDownList20.Text + "' ,'" + DropDownList14.Text + "' , '" + Label1.Text + "' , '" + true + "')", sqlcon);
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();

            {

                Label4.Text = "Order Placed Succesfully";
                Response.Redirect("FillForm2.aspx");

            }

            sqlcon.Close();
        }

        protected void DropDownList14_SelectedIndexChanged(object sender, EventArgs e)
        {
            sqlcon.Open();
            string namel = ("select Rate from DearlerPostItem where Color = '" + DropDownList19.Text + "' AND Brand = '" + DropDownList20.Text +"' ");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();
            string str;

            while (sdrl.Read())
            {
                str = sdrl["Rate"].ToString();

                int amount1 = int.Parse(str.ToString());

                int amount2 = int.Parse(DropDownList14.Text.ToString());

                Label1.Text = (amount1 * amount2).ToString();

                Label1.ForeColor = System.Drawing.Color.Yellow;
               
            }


            sqlcon.Close();
        }

       
    }
}