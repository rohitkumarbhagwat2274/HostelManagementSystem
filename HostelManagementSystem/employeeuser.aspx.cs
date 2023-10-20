using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace HostelManagementSystem
{
    public partial class employeeuser : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie c = Request.Cookies["mycookie"];
            if (c != null)
            {
                txtemail.Text = c["Username"];
                // Label3.Visible = true;
            }
            if (!this.IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=rohitdb;Integrated Security=True");
                con.Open();
                try
                {
                    cmd = new SqlCommand("select * from employee where email=" + "'" + txtemail.Text + "'", con);
                    dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            txtempid.Text = dr.GetString(0).ToString();
                            txtname.Text = dr.GetValue(1).ToString();
                            txtdesig.Text = dr.GetString(2).ToString();

                            txtdepart.Text = dr.GetString(3).ToString();
                            long sal = dr.GetInt64(4);
                            txtsalary.Text = sal.ToString();
                            txtdoj.Text = dr.GetDateTime(5).ToString();
                            long phoneno = dr.GetInt64(6);
                            txtphno.Text = phoneno.ToString();
                            txtemail.Text = dr.GetString(7).ToString();

                        }

                    }
                    else
                        Response.Write("Record not found");
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
                finally
                {
                    //dr.Close();
                    con.Close();
                }


            }
        }

        protected void btnback_Click1(object sender, EventArgs e)
        {
            Response.Redirect("employeedashboard.aspx");
        }
    }
}