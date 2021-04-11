using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonDone_Click(object sender, EventArgs e)
        {
            try
            {
                customer c = new customer();
                c.AddCustomer(TextBoxname.Text, TextBoxAddress.Text, TextBoxContact.Text, TextBoxEmail.Text, DropDownList1.SelectedItem.Value);

                lbl_Msg.Text = "Inserted";
            }
            catch (Exception ex)
            {
                lbl_Msg.Text = ex.Message;

            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}