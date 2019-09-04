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
    public partial class TraderPostItem : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        string str;
        protected void Page_Load(object sender, EventArgs e)
        {

            sqlcon.Open();
            string namel = ("select Name from TraderRegister where RID = '" + Session["RID"] + "' ");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();


            while (sdrl.Read())
            {

                str = sdrl["Name"].ToString();
            }
            sqlcon.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string img = "/upload/" + FileUpload1.FileName;


            FileUpload1.SaveAs(Server.MapPath("/upload/" + FileUpload1.FileName));

            SqlCommand sqlcmd = new SqlCommand("insert into TraderPostItem(Trader_name,Product,Rate,Brand,Pic, RID) values('" + str + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + img + "','" + Session["RID"] + "')", sqlcon);
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();

            {

                Label1.Text = "Item Posted Succesfully";

            }

            sqlcon.Close();
        }
    }
}