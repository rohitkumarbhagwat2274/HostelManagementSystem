using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HostelManagementSystem
{
    public partial class employeedashboard : System.Web.UI.Page
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

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("stu_emp_dashbord.aspx");
        }

        protected void btnstud_Click(object sender, EventArgs e)
        {
            Response.Redirect("employeeuser.aspx");
        }

        protected void btnchat_Click(object sender, EventArgs e)
        {
            Response.Redirect("employeeChat.aspx");
        }

        protected void dispayment_Click(object sender, EventArgs e)
        {
            Response.Redirect("displayPayment.aspx");
        }




    }
}