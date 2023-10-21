using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace HostelManagementSystem
{
    public partial class monthlycoupon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetStudentRegNo();
                GetCouponNumbers();
            }
        }

        protected void ddlRegNo_SelectedIndexChanged(object sender, EventArgs e)
        {
            string regNo = ddlRegNo.SelectedItem.Text;
            GetStudentDetails(regNo);
        }

        protected void ddlCouponNo_SelectedIndexChanged(object sender, EventArgs e)
        {
            string couponNumber = ddlCouponNo.SelectedItem.Text;
            GetCouponExpiry(couponNumber);
        }

        private void GetStudentRegNo()
        {
            using (SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=rohitdb;Integrated Security=True"))
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("SELECT regno FROM student1", con);
                SqlDataReader dr = cmd.ExecuteReader();

                ddlRegNo.DataSource = dr;
                ddlRegNo.DataTextField = "regno";
                ddlRegNo.DataValueField = "regno";
                ddlRegNo.DataBind();

                con.Close();
            }
        }

        private void GetCouponNumbers()
        {
            using (SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=rohitdb;Integrated Security=True"))
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("SELECT couponNumber FROM couponTable where status = 'Active'", con);
                SqlDataReader dr = cmd.ExecuteReader();

                ddlCouponNo.DataSource = dr;
                ddlCouponNo.DataTextField = "couponNumber";
                ddlCouponNo.DataValueField = "couponNumber";
                ddlCouponNo.DataBind();

                con.Close();
            }
        }

        private void GetStudentDetails(string regNo)
        {
            using (SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=rohitdb;Integrated Security=True"))
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("SELECT sname, email FROM student1 WHERE regno = @regno", con);
                cmd.Parameters.AddWithValue("@regno", regNo);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        txtStudentName.Text = dr["sname"].ToString();
                        txtEmail.Text = dr["email"].ToString();
                    }
                }

                con.Close();
            }
        }

        private void GetCouponExpiry(string couponNumber)
        {
            using (SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=rohitdb;Integrated Security=True"))
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("SELECT exp FROM couponTable WHERE couponNumber = @couponNumber", con);
                cmd.Parameters.AddWithValue("@couponNumber", couponNumber);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        txtCouponDate.Text = dr.GetDateTime(0).ToString("yyyy-MM-dd");
                    }
                }

                con.Close();
            }
        }

        protected void btnProvide_Click(object sender, EventArgs e)
        {
            string regNo = ddlRegNo.SelectedItem.Text;
            string couponNumber = ddlCouponNo.SelectedItem.Text;
            DateTime couponDate = DateTime.Parse(txtCouponDate.Text);
            string status = ddlStatus.SelectedItem.Text;

            using (SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=rohitdb;Integrated Security=True"))
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("INSERT INTO studentMonthlyCouponTable (email, couponNumber, coupondate, status) VALUES (@email, @couponNumber, @coupondate, @status)", con);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@couponNumber", couponNumber);
                cmd.Parameters.AddWithValue("@coupondate", couponDate);
                cmd.Parameters.AddWithValue("@status", status);

                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // Update the status of the coupon
                    cmd = new SqlCommand("UPDATE couponTable SET status = 'Disabled' WHERE couponNumber = @couponNumber", con);
                    cmd.Parameters.AddWithValue("@couponNumber", couponNumber);
                    cmd.ExecuteNonQuery();

                    Response.Write("Coupon inserted successfully");
                }
                else
                {
                    Response.Write("Failed to insert coupon");
                }

                con.Close();
            }
        }
    }
}
