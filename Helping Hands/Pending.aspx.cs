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
    public partial class Pending : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
        void getpendingdata()
        {
            SqlDataAdapter da = new SqlDataAdapter("proc_getpendings",con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        void donorpendingdata()
        {
            SqlCommand cmd = new SqlCommand("proc_donorpendings", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", Session["donorid"].ToString());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if((int)Session["a"]==1)
                { donorpendingdata(); }
                else
                getpendingdata();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[index];
            Label l1 = (Label)row.FindControl("Label1");
            Label l2 = (Label)row.FindControl("Label2");
            Session["rdid"] = l2.Text;
            Button b1 = (Button)row.FindControl("Button1");
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_reject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", l2.Text);
            cmd.Parameters.AddWithValue("@b", l1.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            b1.Text = "Cancelled";
            b1.Enabled = false;
            if ((int)Session["a"] == 1)
            { donorpendingdata(); }
            else
            { getpendingdata(); }
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