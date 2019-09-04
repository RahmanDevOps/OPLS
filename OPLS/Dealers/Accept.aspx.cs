using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;



namespace OPLS.Dealers
{
    public partial class Accept : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        string type, color, brand, qua, tt, name, city, add, pin, mob;

        protected void Page_Load(object sender, EventArgs e)
        {
            sqlcon.Open();

            String str = Request.QueryString["ID"];

           

            string namel = ("select * from YarnOrders where ID = '"+str+"'");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();

            while (sdrl.Read())
            {

                TextBox1.Text = sdrl["Email"].ToString();

                type = sdrl["Type"].ToString();
                color = sdrl["Color"].ToString();
                brand = sdrl["Brand"].ToString();
                qua = sdrl["Quantity"].ToString();
                tt = sdrl["Total_Price"].ToString();
                name = sdrl["Name"].ToString();
                city = sdrl["City"].ToString();
                add = sdrl["Address"].ToString();
                pin = sdrl["Pin"].ToString();
                mob = sdrl["Mobile"].ToString();

                

            }

            sqlcon.Close();


           

            SqlCommand sqlcmd = new SqlCommand("insert into AcceptYarn(Type,Color,Brand,Quantity,Total_Price,Name,City,Address,Pin,Mobile) values('" + type + "','" + color + "','" + brand + "','" + qua + "','" + tt + "','" + name + "','" + city + "','" + add + "','" + pin + "','" + mob + "')", sqlcon);
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();

           
            sqlcon.Close();

          

            SqlCommand sqlcmd1 = new SqlCommand("Delete from YarnOrders where ID ='" + str + "'", sqlcon);
            sqlcon.Open();
            sqlcmd1.ExecuteNonQuery();

            sqlcon.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = TextBox1.Text;
            MailMessage feedBack = new MailMessage();

            feedBack.To.Add(email);

            feedBack.From = new MailAddress(email);

            feedBack.Subject = TextBox3.Text; ;

            feedBack.Body = TextBox2.Text;



            feedBack.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();

            smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address

            smtp.Port = 587;

            smtp.EnableSsl = true;

            smtp.Credentials = new System.Net.NetworkCredential("khanrahman909@gmail.com", "9792744951");

            //Or your Smtp Email ID and Password

            smtp.Send(feedBack);

            Label1.Text = "Mail sent successfully";

            TextBox2.Text = "";
            TextBox3.Text = "";


            
        }
    }
}