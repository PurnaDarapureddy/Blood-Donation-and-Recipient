using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace Helping_Hands
{
    public partial class Changepass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = "";
            if((int)Session["a"]==0)
            {
                id = Session["adminid"].ToString();
            }
            else
            {
                id = Session["donorid"].ToString();
            }
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            con.Open();
            string q = "";
            if((int)Session["a"]==0)
            {
                q = "proc_changepassadmin";
            }
            else
            {
                q = "proc_changepassdonor";
            }
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", id);
            cmd.Parameters.AddWithValue("@b", TextBox1.Text);
            cmd.Parameters.AddWithValue("@c", TextBox2.Text);
            int p = cmd.ExecuteNonQuery();
            con.Close();
            if (p != 0)
            {
                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Text = "Password Changed Successfull";
            }
            else
            {
                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Invalid Credentials";
            }
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if ((int)Session["a"] == 1)
                Server.Transfer("DonorHome.aspx");
            else
                Server.Transfer("AdminHome.aspx");
        }
    }
}