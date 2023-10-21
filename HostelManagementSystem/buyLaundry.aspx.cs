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
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["rohitdbConnectionString"].ConnectionString);
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
            using (SqlCommand cmd = new SqlCommand("SELECT couponNumber FROM couponTable WHERE status = 'Active'", con))
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
                reader.Close();
            }
            return price;
        }

        protected void btnBuyNow_Click(object sender, EventArgs e)
        {
            string username = this.username.Text;
            string couponNumber = ddlCouponNumber.SelectedItem.Text;
            string price = rs.Text;
            string transactionId = GenerateTransactionId();

            if (!string.IsNullOrEmpty(username))
            {
                using (SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=rohitdb;Integrated Security=True"))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO buycouponTable (studentemail, couponNumber, rs, Transactionid, status) VALUES (@studentEmail, @couponNumber, @rs, @transactionId, @status)", con))
                    {
                        cmd.Parameters.AddWithValue("@studentEmail", username);
                        cmd.Parameters.AddWithValue("@couponNumber", couponNumber);
                        cmd.Parameters.AddWithValue("@rs", price);
                        cmd.Parameters.AddWithValue("@transactionId", transactionId);
                        cmd.Parameters.AddWithValue("@status",Active.Text);

                        int rowsInserted = cmd.ExecuteNonQuery();

                        if (rowsInserted > 0)
                        {
                            cmd.CommandText = "UPDATE couponTable SET status = 'Disabled' WHERE couponNumber = @couponNumber";
                            cmd.Parameters.Clear();
                            cmd.Parameters.AddWithValue("@couponNumber", couponNumber);

                            int rowsUpdated = cmd.ExecuteNonQuery();

                            if (rowsUpdated > 0)
                            {
                                // Update successful
                                Response.Write("<script>alert('Status updated successfully.');</script>");
                                Response.Redirect("useStudetCoupon.aspx");
                            }
                            else
                            {
                                // Update failed
                                Response.Write("<script>alert('Status update failed.');</script>");
                            }
                        }
                        else
                        {
                            // Insert failed
                            Response.Write("<script>alert('Failed to insert into buycouponTable.');</script>");
                        }
                    }
                }
            }
        }

        private string GenerateTransactionId()
        {
            // Generate a unique transaction ID
            return Guid.NewGuid().ToString();
        }
    }
}
