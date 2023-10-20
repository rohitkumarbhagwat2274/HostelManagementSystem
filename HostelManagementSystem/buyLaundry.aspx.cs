using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace HostelManagementSystem
{
    public partial class buyLaundry : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=rohitdb;Integrated Security=True");
            con.Open();
            HttpCookie c = Request.Cookies["mycookie"];
            if (c != null)
            {
                username.Text = c["Username"];
            }
            if (!IsPostBack)
            {
                BindCouponNumbers();
            }
        }

        private void BindCouponNumbers()
        {
            using (SqlCommand cmd = new SqlCommand("SELECT couponNumber FROM couponTable", con))
            {
                SqlDataReader dr = cmd.ExecuteReader();

                ddlCouponNumber.Items.Clear();
                while (dr.Read())
                {
                    ddlCouponNumber.Items.Add(dr["couponNumber"].ToString());
                }

                dr.Close();
            }
        }

        protected void ddlCouponNumber_SelectedIndexChanged(object sender, EventArgs e)
        {
            string couponNumber = ddlCouponNumber.SelectedItem.Text;
            string price = GetCouponPrice(couponNumber);
            rs.Text = price;
        }

        private string GetCouponPrice(string couponNumber)
        {
            string price = string.Empty;
            using (SqlCommand cmd = new SqlCommand("SELECT rs FROM couponTable WHERE couponNumber = @couponNumber", con))
            {
                cmd.Parameters.AddWithValue("@couponNumber", couponNumber);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    price = reader["rs"].ToString();
                }
            }
            return price;
        }

        protected void btnBuyNow_Click(object sender, EventArgs e)
        {
            string username = Session["username"] as string;
            if (!string.IsNullOrEmpty(username))
            {
                string couponNumber = ddlCouponNumber.SelectedItem.Text;
                string price = rs.Text;
                string transactionId = transid.Text;

                try
                {
                    using (SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=rohitdb;Integrated Security=True"))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("INSERT INTO buycouponTable (studentemail, couponNumber, rs, Transactionid) VALUES (@studentEmail, @couponNumber, @rs, @transactionId)", con);
                        cmd.Parameters.AddWithValue("@studentEmail", username);
                        cmd.Parameters.AddWithValue("@couponNumber", couponNumber);
                        cmd.Parameters.AddWithValue("@rs", price);
                        cmd.Parameters.AddWithValue("@transactionId", transactionId);
                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            SqlCommand cmd1 = new SqlCommand("UPDATE couponTable SET status = 'Disabled' WHERE couponNumber = @couponNumber", con);
                            cmd1.Parameters.AddWithValue("@couponNumber", couponNumber);
                            int rowsUpdated = cmd1.ExecuteNonQuery();

                            if (rowsUpdated > 0)
                            {
                                // Success message
                                Response.Write("<script>alert('Congratulations! Now you can enjoy with your new Laundry coupon.');</script>");
                            }
                            else
                            {
                                // Failed to update coupon status
                                Response.Write("<script>alert('Failed to update coupon status.');</script>");
                            }
                        }
                        else
                        {
                            // Failed to insert into buycouponTable
                            Response.Write("<script>alert('Failed to insert into buycouponTable.');</script>");
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Log the exception
                    // You can replace Console.WriteLine with your preferred logging mechanism
                    Console.WriteLine("Error: " + ex.Message);
                    Response.Write("<script>alert('An error occurred while processing your request. Please try again later.');</script>");
                }
            }
        }

    }
}
