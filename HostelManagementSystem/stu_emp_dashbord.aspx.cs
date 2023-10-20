using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace HostelManagementSystem
{
    public partial class stu_emp_dashbord : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd1;
        SqlCommand cmd2;
        SqlCommand cmd3;
        int res;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection("Data Source=.\\SQLEXPRESS; Integrated Security=True; Initial Catalog=rohitdb");
                con.Open();
                cmd1 = new SqlCommand("select count(*) from employee where email='" + txtuser.Text + "' and pass='" + txtpwd.Text + "'", con);
                cmd2 = new SqlCommand("select count(*) from student1 where email='" + txtuser.Text + "' and pass='" + txtpwd.Text + "'", con);
                cmd3 = new SqlCommand("select count(*) from login where email='" + txtuser.Text + "' and pass='" + txtpwd.Text + "'", con);
                if (dlog.Text == "employee")
                {
                    res = (int)cmd1.ExecuteScalar();
                    if (res > 0)
                    {
                        Response.Write("Valid user!!!");
                        // Response.Redirect("dashbord.aspx?username ="+txtuser.Text);

                        HttpCookie cookie = new HttpCookie("mycookie");
                        cookie["Username"] = txtuser.Text;
                        //cookie["pwd"] = TextBox2.Text;
                        Response.Cookies.Add(cookie); //Response.SetCookie(cookie);
                        cookie.Expires = DateTime.Now.AddMinutes(2);
                        Response.Write("<script>alert('Welcome');</script>");
                        Response.Redirect("employeedashboard.aspx");


                    }
                    else
                        Response.Write("<script>alert('Invalid User');</script>");
                }
                if (dlog.Text == "student")
                {
                    res = (int)cmd2.ExecuteScalar();
                    if (res > 0)
                    {
                        Response.Write("Valid user!!!");
                        // Response.Redirect("dashbord.aspx?username ="+txtuser.Text);

                        HttpCookie cookie = new HttpCookie("mycookie");
                        cookie["Username"] = txtuser.Text;
                        //cookie["pwd"] = TextBox2.Text;
                        Response.Cookies.Add(cookie); //Response.SetCookie(cookie);
                        cookie.Expires = DateTime.Now.AddMinutes(2);
                        Response.Redirect("dashbord.aspx");


                    }
                    else
                        Response.Write("Invalid user");
                }
                if (dlog.Text == "admin")
                {

                    res = (int)cmd3.ExecuteScalar();
                    if (res > 0)
                    {
                        Response.Write("Valid user!!!");
                        // Response.Redirect("dashbord.aspx?username ="+txtuser.Text);

                        HttpCookie cookie = new HttpCookie("mycookie");
                        cookie["Username"] = txtuser.Text;
                        //cookie["pwd"] = TextBox2.Text;
                        Response.Cookies.Add(cookie); //Response.SetCookie(cookie);
                        cookie.Expires = DateTime.Now.AddMinutes(2);
                        //  Response.Redirect("admindashboard.aspx");
                        Response.Redirect("admindashboard.aspx?username=" + txtuser.Text);


                    }
                    else
                        Response.Write("Invalid user");

                }
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

        protected void forgot_Click(object sender, EventArgs e)
        {
            Response.Redirect("forgot.aspx");
        }


    }
}