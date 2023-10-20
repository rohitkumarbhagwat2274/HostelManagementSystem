using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace HostelManagementSystem
{
    public partial class displayPayment : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie c = Request.Cookies["mycookie"];
            if (c != null)
            {
                email.Text = c["Username"];
                email.Visible = true;

                if (!this.IsPostBack)
                {
                    SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=rohitdb;Integrated Security=True");
                    cmd = new SqlCommand("select * from employee_pay where emp_email=" + "'" + email.Text + "'", con);
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    adapter.Fill(ds, "employee_pay");

                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }

            }
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("employeedashboard.aspx");
        }
    }
}