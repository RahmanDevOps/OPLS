using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OPLS
{
    public partial class UserLogin : System.Web.UI.Page
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
    }
}