using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace HostelManagementSystem
{
    public partial class signin : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source =.\\SQLEXPRESS;Initial Catalog=rohitdb;integrated Security=True");
            con.Open();
        }



        protected void btncreate_Click(object sender, EventArgs e)
        {

            try
            {
                cmd = new SqlCommand("insert into login values('" + txtuser.Text + "','" + txtpwd.Text + "'," + txtphno.Text + ",'" + txtemail.Text + "')", con);
                cmd.ExecuteNonQuery();
                Response.Write("Record successfully inserted");
                txtuser.Text = "";
                txtpwd.Text = "";
                txtphno.Text = "";
                txtemail.Text = "";
                txtuser.Focus();


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("admindashboard.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminDisplay.aspx");
        }

    }




}
