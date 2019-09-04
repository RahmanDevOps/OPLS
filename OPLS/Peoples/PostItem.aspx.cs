using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace OPLS.Peoples
{
    public partial class PostItem : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        string str;
        string str2;
        protected void Page_Load(object sender, EventArgs e)
        {

            sqlcon.Open();
            string namel = ("select * from PeoplerRegister where Username = '" + Session["Username"] + "' ");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();

           

            while (sdrl.Read())
            {

                str = sdrl["City"].ToString();
                str2 = sdrl["Name"].ToString();
                

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

        protected void Button3_Click(object sender, EventArgs e)
        {
            string img = "/upload/" + FileUpload1.FileName;
            string ColorT;
            string TypeT;
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
                TypeT = DropDownList2.Text;
            }
            else
            {
                TypeT = TextBox6.Text;
            }


            FileUpload1.SaveAs(Server.MapPath("/upload/" + FileUpload1.FileName));

            SqlCommand sqlcmd = new SqlCommand("insert into PeoplesPostedItem(Name,Color,Type,Rate,Image,Pname,City,Username) values('" + TextBox1.Text + "','" + ColorT + "','" + TypeT + "','" + TextBox4.Text + "','" + img + "', '" + str2 + "', '" + str + "','" + Session["Username"] + "')", sqlcon);
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();

            {

                Label1.Text = "Item Posted Succesfully";

            }

            sqlcon.Close();
        }
    }
}