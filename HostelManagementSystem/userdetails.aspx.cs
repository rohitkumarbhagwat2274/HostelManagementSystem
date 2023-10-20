using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace HostelManagementSystem
{
    public partial class userdetails : System.Web.UI.Page
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
                    cmd = new SqlCommand("select * from student1 where email=" + "'" + txtemail.Text + "'", con);
                    dr = cmd.ExecuteReader();

                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            txtreg.Text = dr.GetString(0).ToString();
                            txtname.Text = dr.GetValue(1).ToString();
                            txtgovidname.Text = dr.GetString(2).ToString();

                            txtgovid.Text = dr.GetString(3).ToString();
                            txtdoj.Text = dr.GetString(4).ToString();
                            txthouse.Text = dr.GetValue(5).ToString();
                            txtpo.Text = dr.GetString(6).ToString();
                            txtps.Text = dr.GetString(7).ToString();

                            txtdist.Text = dr.GetString(8).ToString();
                            txtcity.Text = dr.GetValue(9).ToString();
                            int pin = dr.GetInt32(10);
                            txtpin.Text = pin.ToString();
                            long phoneno = dr.GetInt64(11);
                            txtphno.Text = phoneno.ToString();

                            txtemail.Text = dr.GetString(12).ToString();
                            txtfoodlike.Text = dr.GetString(13).ToString();


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
            Response.Redirect("dashbord.aspx");
        }
    }
}