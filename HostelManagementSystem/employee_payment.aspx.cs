using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace HostelManagementSystem
{
    public partial class employee_payment : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Populate the empid dropdown list with valid employee IDs
                PopulateEmployeeIDs();
            }
        }

        private void PopulateEmployeeIDs()
        {
            con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=rohitdb;Integrated Security=True");
            con.Open();

            cmd = new SqlCommand("SELECT * FROM employee", con);
            dr = cmd.ExecuteReader();

            empid.DataSource = dr;
            empid.DataTextField = "email";
            empid.DataValueField = "email";

            empid.DataBind();

            dr.Close();
            con.Close();
        }

        protected void empid_SelectedIndexChanged(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=rohitdb;Integrated Security=True");
            con.Open();

            cmd = new SqlCommand("SELECT emp_name FROM employee WHERE email = @emp_email", con);
            cmd.Parameters.AddWithValue("@emp_email", empid.SelectedValue);

            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                empname.Text = dr.GetString(0);
            }
            else
            {
                empname.Text = "";
            }

            dr.Close();
            con.Close();
        }

        protected void pay_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=rohitdb;Integrated Security=True");
                con.Open();

                cmd = new SqlCommand("INSERT INTO employee_pay (emp_name, emp_email, pay_date, pay_Amount, Transfer_id, pic) VALUES (@emp_name, @emp_email, @pay_date, @pay_Amount, @Transfer_id, @pic)", con);
                cmd.Parameters.AddWithValue("@emp_name", empname.Text);
                cmd.Parameters.AddWithValue("@emp_email", empid.SelectedValue);
                cmd.Parameters.AddWithValue("@pay_date", paydate.Text);
                cmd.Parameters.AddWithValue("@pay_Amount", Convert.ToDouble(payamount.Text));
                cmd.Parameters.AddWithValue("@Transfer_id", transid.Text);
                cmd.Parameters.AddWithValue("@pic", FileUpload1.FileName);

                FileUpload1.SaveAs(Server.MapPath("~/student_pic/") + FileUpload1.FileName);

                cmd.ExecuteNonQuery();
                Response.Write("Record successfully inserted");

                empname.Text = "";
                empid.SelectedIndex = -1;
                paydate.Text = "";
                payamount.Text = "";
                transid.Text = "";

                empid.Focus();
                Response.Redirect("employee_payment.aspx");
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
