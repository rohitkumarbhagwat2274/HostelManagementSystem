﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace HostelManagementSystem
{
    public partial class useStudetCoupon : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HttpCookie c = Request.Cookies["mycookie"];
                if (c != null)
                {
                    username.Text = c["Username"];
                    username.Visible = true;
                }
                if (!IsPostBack)
                {
                    BindCouponNumbers();
                }

                if (username.Text != "")
                {
                    con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=rohitdb;Integrated Security=True");
                    cmd = new SqlCommand("SELECT * FROM studentMonthlycouponTable WHERE email=@username", con);
                    cmd.Parameters.AddWithValue("@username", username.Text);
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    adapter.Fill(ds, "studentMonthlycouponTable");

                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
            }
        }

        private void BindCouponNumbers()
        {
            con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=rohitdb;Integrated Security=True");
            using (SqlCommand cmd = new SqlCommand("SELECT couponNumber FROM studentMonthlycouponTable Where status = 'Active'  ", con))
            {
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                ddlCouponNumber.Items.Clear();
                while (dr.Read())
                {
                    ddlCouponNumber.Items.Add(dr["couponNumber"].ToString());
                }

                dr.Close();
                con.Close();
            }
        }

        protected void btnBuyNow_Click(object sender, EventArgs e)
        {
            string username = Session["username"] as string;
            if (username != null)
            {
                con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=rohitdb;Integrated Security=True");
                cmd = new SqlCommand("UPDATE studentMonthlycouponTable SET status = 'Disabled' WHERE couponNumber = @couponNumber", con);
                cmd.Parameters.AddWithValue("@couponNumber", ddlCouponNumber.SelectedItem.Text);

                try
                {
                    con.Open();
                    int rowsUpdated = cmd.ExecuteNonQuery();

                    if (rowsUpdated > 0)
                    {
                        // Update successful
                        Response.Write("<script>alert('Status updated successfully.');</script>");
                        Response.Redirect("buyLaundry.aspx");
                    }
                    else
                    {
                        // Update failed
                        Response.Write("<script>alert('Status update failed.');</script>");
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
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("buyLaundry.aspx");
        }
    }
}
