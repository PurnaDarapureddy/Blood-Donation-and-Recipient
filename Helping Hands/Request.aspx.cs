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
    public partial class Request : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
        void getrequest()
        {
            SqlCommand cmd = new SqlCommand("proc_getrequest", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", Session["donorid"].ToString());
            cmd.Parameters.AddWithValue("@b", Session["sdid"].ToString());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        void requestid()
        {
            SqlCommand cmd = new SqlCommand("proc_requestid", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", Session["donorid"].ToString());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }
        void delete()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_deleterequests", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", Session["donorid"].ToString());
            cmd.ExecuteNonQuery();
            con.Close();
            requestid();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                requestid();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Server.Transfer("DonorHome.aspx");
        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView2.Rows[index];
            Label l1 = (Label)row.FindControl("Label1");
            Session["sdid"] = l1.Text;
            getrequest();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[index];
            if(e.CommandName=="iAccept")
            {
                DateTime currentDate = DateTime.Now;
                DateTime newDate = currentDate.AddDays(90);
                Label l1 = (Label)row.FindControl("Label1");
                Label l7 = (Label)row.FindControl("Label7");
                Button b1 = (Button)row.FindControl("Button1");
                Button b2 = (Button)row.FindControl("Button2");
                con.Open();
                SqlCommand cmd = new SqlCommand("proc_insertaccept", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@a", Session["sdid"].ToString());
                cmd.Parameters.AddWithValue("@b", DateTime.Now.ToString());
                cmd.Parameters.AddWithValue("@c", "Donated Recently Unavailable Now");
                cmd.Parameters.AddWithValue("@d", Session["donorid"].ToString());
                cmd.Parameters.AddWithValue("@e", newDate);
                cmd.Parameters.AddWithValue("@f", Session["BloodGroup"].ToString());
                cmd.Parameters.AddWithValue("@g", l7.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                b1.Text = "Acceted";
                b1.Enabled = false;
                b2.Visible = false;
                delete(); 

            }
            else if(e.CommandName=="iReject")
            {
                 Label l1 = (Label)row.FindControl("Label1");
                Button b1 = (Button)row.FindControl("Button1");
                Button b2 = (Button)row.FindControl("Button2");
                con.Open();
                SqlCommand cmd = new SqlCommand("proc_reject", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@a", Session["donorid"].ToString());
                cmd.Parameters.AddWithValue("@b", Session["sdid"].ToString());
                cmd.ExecuteNonQuery();
                con.Close();
                b1.Visible = false;
                b2.Text = "Rejected";
                b2.Enabled = false;
                requestid();
            }
        }
    }
}