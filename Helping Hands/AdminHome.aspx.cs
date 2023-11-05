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
    public partial class AdminHome : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
        void getdata()
        {
            SqlDataAdapter da = new SqlDataAdapter("proc_displaydonorsadmin", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            Session["a"] = 0;
        }
        void getdonordata()
        {
            SqlDataAdapter da = new SqlDataAdapter("proc_getAccepters", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }
        void getdrop()
        {
            SqlDataAdapter da = new SqlDataAdapter("proc_getstates", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "sname";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "--select--");
        }
        void getBG()
        {
            SqlDataAdapter da = new SqlDataAdapter("proc_getbloodgroup", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "BloodGroup";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--select--");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                getdata();
                Label1.Text = Session["adminid"].ToString();
                getBG();
                getdrop();
                getdonordata();
                DropDownList3.Items.Insert(0, "--select--");
                
            }
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Server.Transfer("Register.aspx");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("proc_getcity", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", DropDownList2.SelectedItem.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList3.DataSource = ds;
            DropDownList3.DataTextField = "cname";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, "--select--");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("proc_searchadmin",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@b", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@c", DropDownList3.SelectedItem.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds= new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="iDelete")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];
                Label l1 = (Label)row.FindControl("Label1");
                con.Open();
                SqlCommand cmd = new SqlCommand("proc_deleteadmin",con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@a", l1.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                getdata();
            }
            else if(e.CommandName=="iEdit")
            {
                Session["a"] = 1;
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];
                Label l1 = (Label)row.FindControl("Label1");
                Label l2 = (Label)row.FindControl("Label2");
                Label l3 = (Label)row.FindControl("Label3");
                Label l4 = (Label)row.FindControl("Label4");
                Label l5 = (Label)row.FindControl("Label5");
                Label l6 = (Label)row.FindControl("Label6");
                Label l7 = (Label)row.FindControl("Label7");
                Label l8 = (Label)row.FindControl("Label8");
                Label l9 = (Label)row.FindControl("Label9");
                Session["did"] = l1.Text;
                Session["dname"] = l2.Text;
                Session["gender"] = l3.Text;
                Session["lang"] = l4.Text;
                Session["state"] = l5.Text;
                Session["city"] = l6.Text;
                Session["BG"] = l7.Text;
                Session["phno"] = l8.Text;
                Session["email"] = l9.Text;
                Server.Transfer("Register.aspx");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DropDownList1.Items.Clear();
            DropDownList2.Items.Clear();
            DropDownList3.Items.Clear();
            DropDownList3.Items.Insert(0, "--select--");
            getBG();
            getdrop();
            getdata();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Server.Transfer("admin.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Server.Transfer("Changepass.aspx");
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            getdata();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["a"] = 0;
            Server.Transfer("Pending.aspx");
        }
    }
}