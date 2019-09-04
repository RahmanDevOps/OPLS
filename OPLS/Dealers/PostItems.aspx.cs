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
    public partial class PostItems : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        string str;

        protected void Page_Load(object sender, EventArgs e)
        {

            sqlcon.Open();
            string namel = ("select Name from DealerRegister where RID = '" + Session["RID"] + "' ");
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
            string ColorT;
            string BrandT;
            if (TextBox5.Text == null)
            {
                ColorT = DropDownList1.Text;
            }
            else
            {
                ColorT = TextBox5.Text;
            }

            if (TextBox6.Text == null)
            {
                BrandT = DropDownList2.Text;
            }
            else
            {
                BrandT = TextBox6.Text;
            }


            FileUpload1.SaveAs(Server.MapPath("/upload/" + FileUpload1.FileName));

            SqlCommand sqlcmd = new SqlCommand("insert into DearlerPostItem(Supplier_name,Name,Color,Brand,Rate,Image, RID) values('" + str + "','" + TextBox1.Text + "','" + ColorT + "','" + BrandT + "','" + TextBox4.Text + "','" + img + "','" + Session["RID"] + "')", sqlcon);
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();

            {

                Label1.Text = "Item Posted Succesfully";

            }

            sqlcon.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "Other")
            {
                TextBox5.Visible = true;


            }

            if (DropDownList1.Text != "Other")
            {
                TextBox5.Visible = false;


            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList2.Text == "Other")
            {
                TextBox6.Visible = true;

            }
            if (DropDownList2.Text != "Other")
            {
                TextBox6.Visible = false;

            }
        }
    }
}