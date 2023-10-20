using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace HostelManagementSystem
{
    public partial class studentpay : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=rohitdb;Integrated Security=True");
            con.Open();
            HttpCookie c = Request.Cookies["mycookie"];
            if (c != null)
            {
                txtemail.Text = c["Username"];
            }
        }

        protected void btnadd_Click1(object sender, EventArgs e)
        {
            try
            {
                cmd = new SqlCommand("INSERT INTO studentPay (sname, email,  amount, transaction_id) VALUES ('" + txtsname.Text + "','" + txtemail.Text + "','" + txtrs.Text + "','" + txttransid.Text + "')", con);
                cmd.ExecuteNonQuery();
                Response.Write("Record successfully added!");
                txtsname.Text = "";
                txtrs.Text = "";
                txttransid.Text = "";
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {

                con.Close();
            }


        }

        protected void btnback_Click1(object sender, EventArgs e)
        {
            Response.Redirect("dashbord.aspx");
        }

        protected void btndis_Click(object sender, EventArgs e)
        {
            Response.Redirect("spaydisplay.aspx");
        }
    }
}