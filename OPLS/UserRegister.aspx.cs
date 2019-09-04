using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OPLS
{
    public partial class UserRegister : System.Web.UI.Page
    {
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
    }
}