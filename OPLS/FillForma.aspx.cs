using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OPLS
{
    public partial class FillForma : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList16_SelectedIndexChanged1(object sender, EventArgs e)
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
    }
}