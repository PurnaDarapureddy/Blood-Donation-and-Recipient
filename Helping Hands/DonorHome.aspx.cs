using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Security;

namespace Helping_Hands
{
    public partial class DonorHome : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
        void getdata()
        {
            SqlCommand cmd = new SqlCommand("proc_displayDdetails", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", Session["donorid"].ToString());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
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
        void getDonors()
        {
            SqlCommand cmd = new SqlCommand("proc_getmatcheddonors", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", Session["BloodGroup"].ToString());
            cmd.Parameters.AddWithValue("@b", Session["donorid"].ToString());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView2.DataSource = ds;
            GridView2.DataBind();
            
        }
        void getDonorsUnavailable()
        {
            SqlCommand cmd = new SqlCommand("proc_getdonors_donor", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", Session["BloodGroup"].ToString());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView3.DataSource = ds;
            GridView3.DataBind();
        }
       /* void remove_requested_donors()
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("proc_remove_requested_donors", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", Session["BloodGroup"].ToString());
            cmd.Parameters.AddWithValue("@b", Session["donorid"].ToString());
            cmd.Parameters.AddWithValue("@c", Session["requestSent"].ToString());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }*/
        void request()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_status", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", Session["donorid"].ToString());
            cmd.Parameters.AddWithValue("@b", Session["requestSent"].ToString());
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.HasRows)
            {
                dr.Read();
                Session["s_status"] = dr[0].ToString();
                Session["r_status"] = dr[1].ToString();
            }
        }
       protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Label1.Text = Session["dname"].ToString();
                getdata();
                getdrop();
                getBG();
                DropDownList3.Items.Insert(0, "--select--");
            }
            
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            
            Session.Abandon();
            Server.Transfer("Logout.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
            Server.Transfer("Home.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DropDownList1.Items.Clear();
            DropDownList2.Items.Clear();
            DropDownList3.Items.Clear();
            DropDownList3.Items.Insert(0, "--select--");
            getBG();
            getdrop();
            getdata();
            getDonors();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            getdata();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            getdata();

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            Control c1 = row.FindControl("TextBox1");
            TextBox t1 = (TextBox)c1;
            Control c2 = row.FindControl("TextBox2");
            TextBox t2 = (TextBox)c2;
            Control c3 = row.FindControl("TextBox3");
            TextBox t3 = (TextBox)c3;
            Control c4 = row.FindControl("TextBox4");
            TextBox t4 = (TextBox)c4;
            Control c5 = row.FindControl("TextBox5");
            TextBox t5 = (TextBox)c5;
            Control c6 = row.FindControl("TextBox6");
            TextBox t6 = (TextBox)c6;
            Control c7 = row.FindControl("TextBox7");
            TextBox t7 = (TextBox)c7;
            Control c8 = row.FindControl("TextBox8");
            TextBox t8 = (TextBox)c8;
            Control c9 = row.FindControl("TextBox9");
            TextBox t9 = (TextBox)c9;
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_updatedonors", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", t1.Text);
            cmd.Parameters.AddWithValue("@b", t2.Text);
            cmd.Parameters.AddWithValue("@c", t3.Text);
            cmd.Parameters.AddWithValue("@d", t4.Text);
            cmd.Parameters.AddWithValue("@e", t5.Text);
            cmd.Parameters.AddWithValue("@f", t6.Text);
            cmd.Parameters.AddWithValue("@g", t7.Text);
            cmd.Parameters.AddWithValue("@h", t8.Text);
            cmd.Parameters.AddWithValue("@i", t9.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            getdata();
            
       }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["a"] = 1;
            Server.Transfer("Changepass.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
          
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "iDONOR")
            { 
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];
                Label l7 = (Label)row.FindControl("Label7");
                Session["BloodGroup"] = l7.Text;
                getDonors();
                getDonorsUnavailable();
                Label10.Visible = true;
                Label11.Visible = true;
            }
            else if(e.CommandName== "iRequest1")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];
                Label l7 = (Label)row.FindControl("Label7");
                Session["BloodGroup"] = l7.Text;
                Server.Transfer("Request.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("proc_searchdonor", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@b", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@c", DropDownList3.SelectedItem.Text);
            cmd.Parameters.AddWithValue("id", Session["donorid"].ToString());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="iREQUEST")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView2.Rows[index];
                Label l1 = (Label)row.FindControl("Label1");
                Button b1 = (Button)row.FindControl("Button1");
                con.Open();
                SqlCommand cmd1 = new SqlCommand("proc_check_donor", con);
                cmd1.CommandType = CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@a", l1.Text);
                object p = cmd1.ExecuteScalar();
                con.Close();
                if ((int)p == 0)
                {
                    con.Open();
                    SqlCommand cmd2 = new SqlCommand("proc_check_pendings", con);
                    cmd2.CommandType = CommandType.StoredProcedure;
                    cmd2.Parameters.AddWithValue("@a", Session["donorid"].ToString());
                    cmd2.Parameters.AddWithValue("@b", l1.Text);
                    object q = cmd2.ExecuteScalar();
                    con.Close();
                    if ((int)q== 0)
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("proc_insertstatus", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@a", Session["donorid"].ToString());
                        cmd.Parameters.AddWithValue("@b", "Pending");
                        cmd.Parameters.AddWithValue("@c", l1.Text);
                        cmd.Parameters.AddWithValue("@d", "Requested");
                        cmd.Parameters.AddWithValue("@e", "null");
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Session["requestSent"] = l1.Text;
                        request();
                        b1.Text = Session["s_status"].ToString();
                        b1.Font.Bold = true;
                        b1.Enabled = false;
                        //remove_requested_donors();
                    }
                    else
                    {
                        b1.Text = "Already Requested";
                        b1.Font.Bold = true;
                        b1.Enabled = false;
                    }

                }
                else
                {
                    b1.Text = "Donor Unavailbe";
                    b1.Font.Bold = true;
                    b1.Enabled = false;
                }


            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["a"] = 1;
            Server.Transfer("Pending.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton5_Click1(object sender, EventArgs e)
        {
            Server.Transfer("acceptors.aspx");

        }
    }
}