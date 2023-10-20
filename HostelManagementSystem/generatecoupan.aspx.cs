using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace HostelManagementSystem
{
    public partial class generatecoupan : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie c = Request.Cookies["mycookie"];
            if (c != null)
            {
                username.Text = c["Username"];
                // Label3.Visible = true;
            }
        }

        protected void save_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=rohitdb;Integrated Security=True");
                con.Open();

                cmd = new SqlCommand("INSERT INTO couponTable (Createdbyuserid, couponNumber, mfg, exp, rs, status) VALUES (@username, @couponNumber, @mfg, @exp, @rs, @status)", con);
                cmd.Parameters.AddWithValue("@username", username.Text);
                cmd.Parameters.AddWithValue("@couponNumber", CouponNumber.Text);
                cmd.Parameters.AddWithValue("@mfg", mfg.Text);
                cmd.Parameters.AddWithValue("@exp", exp.Text);
                cmd.Parameters.AddWithValue("@rs", rs.Text);
                cmd.Parameters.AddWithValue("@status", sta.Text);




                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Save Successfully');</script>");

                username.Text = "";
                CouponNumber.Text = "";
                mfg.Text = "";
                exp.Text = "";
                rs.Text = "";
                sta.Text = "";


                Response.Redirect("generatecoupan.aspx");
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


        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("admindashboard.aspx");
        }


    }
}