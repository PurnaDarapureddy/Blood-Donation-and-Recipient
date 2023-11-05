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
    public partial class DonorLogin : System.Web.UI.Page
    {
        void getName()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_getdname", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.HasRows)
            {
                dr.Read();
                Session["dname"] = dr[0].ToString();
            }
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Server.Transfer("Register.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_logindonor", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            cmd.Parameters.AddWithValue("@b", TextBox2.Text);
            object p = cmd.ExecuteScalar();
            con.Close();
            if ((int)p != 0)
            {
                getName();
                Session["donorid"] = TextBox1.Text;
                Server.Transfer("DonorHome.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Invalid Credentials";
            }
        }
    }
}