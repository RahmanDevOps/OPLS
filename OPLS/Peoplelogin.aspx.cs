using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Configuration;

namespace OPLS
{
    public partial class Peoplelogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "Yarn Dealers")
            {
                Response.Redirect("DealerLogin.aspx");
            }
            else if (DropDownList1.Text == "Traders")
            {
                Response.Redirect("Traderlogin.aspx");
            }
            else
            {
                Response.Redirect("Peoplelogin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ValidateUsercs(TextBox1.Text.Trim(), TextBox2.Text.Trim());
        }
        private void ValidateUsercs(string p, string p_2)
        {
            SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);


            SqlCommand sqlcmd = new SqlCommand("select * from PeoplerRegister where Username=@id and Password=@USERPWD", sqlcon);
            sqlcmd.Parameters.AddWithValue("@id", p);
            sqlcmd.Parameters.AddWithValue("@USERPWD", p_2);
            sqlcon.Open();
            SqlDataAdapter da = new SqlDataAdapter(sqlcmd);
            DataSet ds = new DataSet();

            sqlcmd.ExecuteScalar();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["Username"] = TextBox1.Text;
                Response.Redirect("/Peoples/peoplehome.aspx");

            }
            else
            {

                Label1.Text = "Please Enter correct Username and Passward";
            }
            sqlcon.Close();

        }
    }
}