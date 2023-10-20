using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace HostelManagementSystem
{
    public partial class studentPage : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source =.\\SQLEXPRESS;Initial Catalog=rohitdb;integrated Security=True");
            con.Open();
        }


        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("admindashboard.aspx");
        }



        protected void btnupdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("studentdetails.aspx");
        }



        protected void btnsave_Click(object sender, EventArgs e)
        {

            try
            {
                cmd = new SqlCommand("insert into student1 values('" + txtreg.Text + "','" + txtname.Text + "','" + dgovname.Text + "','" + txtgovid.Text + "','" + txtdoj.Text + "','" + txthouse.Text + "','" + txtpo.Text + "','" + txtps.Text + "','" + txtdist.Text + "','" + txtcity.Text + "','" + txtpin.Text + "','" + txtphno.Text + "','" + txtemail.Text + "','" + dfood.Text + "','" + txtpwd.Text + "','" + FileUpload1.FileName + "')", con);
                FileUpload1.SaveAs(Server.MapPath("~/student_pic/") + FileUpload1.FileName);

                cmd.Parameters.AddWithValue("@pic", FileUpload1.FileName);
                cmd.ExecuteNonQuery();
                Response.Write("Record successfully inserted");
                txtreg.Text = "";
                txtname.Text = "";
                dgovname.Text = "";
                txtgovid.Text = "";
                txtdoj.Text = "";
                txthouse.Text = "";
                txtpo.Text = "";
                txtps.Text = "";
                txtdist.Text = "";
                txtcity.Text = "";
                txtphno.Text = "";
                txtemail.Text = "";
                dfood.Text = "";
                txtpwd.Text = "";
                txtreg.Focus();


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }




    }
}
