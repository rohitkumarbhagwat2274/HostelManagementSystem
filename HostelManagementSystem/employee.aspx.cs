using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace HostelManagementSystem
{
    public partial class employee : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source =.\\SQLEXPRESS;Initial Catalog=rohitdb;integrated Security=True");
            con.Open();
        }

        protected void btndis_Click(object sender, EventArgs e)
        {
        }

        protected void btnadd_Click1(object sender, EventArgs e)
        {
            try
            {
                cmd = new SqlCommand("insert into employee values('" + txtempid.Text + "','" + txtname.Text + "','" + txtdesig.Text + "','" + txtdepart.Text + "'," + txtsalary.Text + ",'" + txtdoj.Text + "'," + txtphno.Text + ",'" + txtemail.Text + "','" + txtpwd.Text + "')", con);
                cmd.ExecuteNonQuery();
                Response.Write("Record successfully inserted");
                txtempid.Text = "";
                txtname.Text = "";
                txtdesig.Text = "";
                txtdepart.Text = "";
                txtsalary.Text = "";
                txtdoj.Text = "";
                txtphno.Text = "";
                txtemail.Text = "";
                txtpwd.Text = "";
                txtemail.Focus();
                Response.Redirect("employee.aspx");

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {


            Response.Redirect("displayemployee.aspx");
        }

        protected void btnback_Click1(object sender, EventArgs e)
        {

            Response.Redirect("admindashboard.aspx");
        }





    }
}