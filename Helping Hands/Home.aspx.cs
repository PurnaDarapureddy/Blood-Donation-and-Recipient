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
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
        void getBGC()
        {
            SqlDataAdapter da = new SqlDataAdapter("proc_getBTC", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        void getBloodBanks()
        {
            SqlDataAdapter da = new SqlDataAdapter("proc_getBloodBanks", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                getBGC();
                getBloodBanks();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button5.Visible = true;
            Button6.Visible = true;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Server.Transfer("admin.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
             Session["a"] = 0;
            Server.Transfer("Register.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Server.Transfer("DonorLogin.aspx");
        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("proc_BloodBankSearch", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView2.DataSource = ds;
            GridView2.DataBind();

        }

        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            getBloodBanks();
        }
    }
}