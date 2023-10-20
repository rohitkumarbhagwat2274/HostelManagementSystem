using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HostelManagementSystem
{
    public partial class admindashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie c = Request.Cookies["mycookie"];
            if (c != null)
            {
                Label3.Text = c["Username"];
                Label3.Visible = true;
            }

        }

        protected void btnemp_Click(object sender, EventArgs e)
        {
            Response.Redirect("employee.aspx");
        }

        protected void btnstud_Click(object sender, EventArgs e)
        {
            Response.Redirect("studentPage.aspx");
        }

        protected void btnuser_Click(object sender, EventArgs e)
        {
            Response.Redirect("signin.aspx");
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("stu_emp_dashbord.aspx");
        }

        protected void btnchat_Click(object sender, EventArgs e)
        {
            Response.Redirect("chat1.aspx");
        }

        protected void doemppay_Click(object sender, EventArgs e)
        {
            Response.Redirect("employee_payment.aspx");
        }
    }
}