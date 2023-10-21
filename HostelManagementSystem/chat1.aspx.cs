using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace HostelManagementSystem
{
    public partial class chat1 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd1;
        SqlCommand cmd2;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source =.\\SQLEXPRESS;Initial Catalog=rohitdb;integrated Security=True");
            con.Open();
            HttpCookie c = Request.Cookies["mycookie"];
            if (c != null)
            {
                txtuser.Text = c["Username"];
                txtuser.Visible = true;
            }
            cmd2 = new SqlCommand("select * from message where group_name = 'Test'", con);
            dr = cmd2.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    display.Text = dr["send_message"].ToString();
                }
            }
            dr.Close();
            con.Close();

        }




        protected void btnok_Click1(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd1 = new SqlCommand("insert into message(user_name,said,send_message) values('" + txtuser.Text + "','" + said.SelectedItem.Text + "','" + txtmessage.Text + "')", con);
                cmd1.ExecuteNonQuery();
                Response.Write("Record successfully inserted");
                txtuser.Text = "";
                said.Text = "";
                txtmessage.Text = "";

                Response.Redirect("chat1.aspx");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                dr.Close();
                con.Close();
            }
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("admindashboard.aspx");
        }

        


    }
}