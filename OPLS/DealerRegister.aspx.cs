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
    public partial class DealerRegister : System.Web.UI.Page
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

        protected void Button3_Click(object sender, EventArgs e)
        {

            string doc = "/upload/" + FileUpload1.FileName;
          

            FileUpload1.SaveAs(Server.MapPath("/upload/" + FileUpload1.FileName));

            SqlCommand sqlcmd = new SqlCommand("insert into DealerRegister(RID,Email,Password,Name,Boolean,Type,Address,Mobile,Documentt) values('" + TextBox1.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox2.Text + "','" + false + "' ,'" + DropDownList2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "' , '" + doc + "')", sqlcon);
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();

            {

                Label1.Text = "Registered Succesfully";

            }

            sqlcon.Close();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Label2.Text = "";
            sqlcon.Open();
            string namel = ("select RID from DealerRegister where RID = '" + TextBox1.Text + "' ");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();

            while (sdrl.Read())
            {

                Label2.Text = "RID Already Exits.";
                Label2.ForeColor = System.Drawing.Color.Red;
                Button3.Enabled = false;

            }
            sqlcon.Close();
            if (Label2.Text == "RID Already Exits.")
            {
                Button3.Enabled = false;
            }
            if (Label2.Text != "RID Already Exits.")
            {
                Label2.Text = "RID Available";
                Label2.ForeColor = System.Drawing.Color.Green;
                Button3.Enabled = true;
            }
            
        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
           
            TextBox4.Text = "";
            TextBox5.Text = "";
           
            TextBox7.Text = "";
            Label2.Text = "";
        }
    }
}