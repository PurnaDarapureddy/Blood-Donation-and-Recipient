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
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
        void getdrop()
        {
            SqlDataAdapter da = new SqlDataAdapter("proc_getstates", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "sname";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--select--");
        }
        void getBG()
        {
            SqlDataAdapter da = new SqlDataAdapter("proc_getbloodgroup", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList3.DataSource = ds;
            DropDownList3.DataTextField = "BloodGroup";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, "--select--");
        }
        void clear()
        {
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text = "";
            RadioButton1.Checked = RadioButton2.Checked = false;
            CheckBox1.Checked = CheckBox2.Checked = CheckBox3.Checked = false;
            DropDownList1.Items.Clear();
            DropDownList2.Items.Clear();
            DropDownList3.Items.Clear();
            getdrop();
            getBG();
            DropDownList2.Items.Insert(0, "--select--");

        }
        void getcity()
        {
            SqlCommand cmd = new SqlCommand("proc_getcity", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", DropDownList1.SelectedItem.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "cname";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "--select--");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                getdrop();
                getBG();
                if((int)Session["a"]==0)
                { }
                else
                {
                    TextBox1.Text = Session["dname"].ToString();
                    TextBox2.Text = Session["did"].ToString();
                    TextBox5.Text = Session["phno"].ToString();
                    TextBox6.Text = Session["email"].ToString();
                    if (RadioButton1.Text == Session["gender"].ToString().Trim())
                        RadioButton1.Checked = true;
                    else if (RadioButton2.Text == Session["gender"].ToString().Trim())
                        RadioButton2.Checked = true;
                    string[] s = Session["lang"].ToString().Split();
                    foreach (string i in s)
                    {
                        if (i == CheckBox1.Text)
                        { CheckBox1.Checked = true; }
                        else if (i == CheckBox2.Text)
                        { CheckBox2.Checked = true; }
                        else if (i == CheckBox3.Text)
                        { CheckBox3.Checked = true; }
                    }
                    DropDownList1.SelectedItem.Text = Session["state"].ToString();
                    getcity();
                    DropDownList2.SelectedItem.Text = Session["city"].ToString();
                    DropDownList3.SelectedItem.Text = Session["BG"].ToString();
                    Button1.Text = "Update";
                    Button1.CausesValidation = false;
                    Button2.Text = "Cancel";
                    TextBox2.Enabled = false;
                    TextBox3.Enabled = false;
                    TextBox4.Enabled = false;
                }
                DropDownList2.Items.Insert(0, "--select--");

            }
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home.aspx");
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Server.Transfer("Home.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string q = "";
            if(Button1.Text=="Register")
            { q = "proc_insertdonors"; }
            else
            { q = "proc_updatedonors"; }
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", TextBox2.Text);
            cmd.Parameters.AddWithValue("@b", TextBox1.Text);
            if (Button1.Text == "Register")
            { cmd.Parameters.AddWithValue("@pass", TextBox3.Text); }
            cmd.Parameters.AddWithValue("@h", TextBox5.Text);
            cmd.Parameters.AddWithValue("@i", TextBox6.Text);
            string g = "";
            if(RadioButton1.Checked==true)
            { g = RadioButton1.Text; }
            else if(RadioButton2.Checked==true)
            { g = RadioButton2.Text; }
            cmd.Parameters.AddWithValue("c", g);
            string ch = "";
            if(CheckBox1.Checked==true)
            { ch = CheckBox1.Text; }
            if(CheckBox2.Checked==true)
            { ch = ch + " " + CheckBox2.Text; }
            if(CheckBox3.Checked==true)
            { ch = ch + " " + CheckBox3.Text; }
            cmd.Parameters.AddWithValue("@d", ch);
            cmd.Parameters.AddWithValue("@e", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@f", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@g", DropDownList3.SelectedItem.Text);
            int p = cmd.ExecuteNonQuery();
            if(p!=0)
            {
                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Text = "Registered Successfully";
            }
            else
            {
                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Not Registered";
            }
            if (Button1.Text == "Update")
            { 
                Server.Transfer("AdminHome.aspx");
            }
            clear();
            DropDownList2.Items.Insert(0, "--select--");


        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            getcity();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Button2.Text == "Clear")
            { clear(); }
            else if (Button2.Text == "Cancel")
            { Server.Transfer("AdminHome.aspx"); }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Server.Transfer("DonorLogin.aspx");
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
    }
}