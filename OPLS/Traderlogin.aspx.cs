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
    public partial class Traderlogin : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        string str;
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
            sqlcon.Open();
            string namel = ("select Boolean from TraderRegister where RID = '" + TextBox1.Text + "' ");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();

            while (sdrl.Read())
            {

                str = sdrl["Boolean"].ToString();
              
            }
            sqlcon.Close();

            if (str == "True")
            {

                ValidateUsercs(TextBox1.Text.Trim(), TextBox2.Text.Trim());
            }

            else
            {
                Label1.Text = "You are not a registered user or not verified";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
        private void ValidateUsercs(string p, string p_2)
        {
            SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);


            SqlCommand sqlcmd = new SqlCommand("select * from TraderRegister where RID=@id and Password=@USERPWD", sqlcon);
            sqlcmd.Parameters.AddWithValue("@id", p);
            sqlcmd.Parameters.AddWithValue("@USERPWD", p_2);
            sqlcon.Open();
            SqlDataAdapter da = new SqlDataAdapter(sqlcmd);
            DataSet ds = new DataSet();

            sqlcmd.ExecuteScalar();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["RID"] = TextBox1.Text;
                Response.Redirect("Traders/Traderhome.aspx");

            }
            else
            {

                Label1.Text = "Wrong RID or Password";
            }
            sqlcon.Close();

        }
    }
}