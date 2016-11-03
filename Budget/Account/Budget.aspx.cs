using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Budget.Account
{
    public partial class Budget : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["configstring"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            BindRepeater();
          lblwelcome.Text = Session["FirstName"] +"\r\n" + "welcome to budget application";
            con.Open();
            string st = "select  CategoryLongName from Category";
            SqlCommand cmd = new SqlCommand(st, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (!IsPostBack)
                {
                    ddlcategory.Items.Add(dr[0].ToString());
                }
                
             }
            cmd.Dispose();
            con.Close();
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
           
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["configstring"].ToString());
                SqlParameter userid = new SqlParameter("@userid", Session["UserID"]);
                SqlParameter interval = new SqlParameter("@interval", ddtinterval.Text);
                SqlParameter categoryname = new SqlParameter("@categoryname", ddlcategory.Text);
                SqlParameter amount = new SqlParameter("@amount", txtincome.Text);
                string query = "insert into Budget values(@userid,@interval,@categoryname,@amount)";
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.Add(userid);
                cmd.Parameters.Add(interval);
                cmd.Parameters.Add(categoryname);
                cmd.Parameters.Add(amount);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                con.Close();
       }

        private void BindRepeater()
        {
            SqlConnection con=new SqlConnection(ConfigurationManager.ConnectionStrings["configstring"].ToString());
            string query = "select Userid,Interval,CategoryShortName,Amount from budget where Userid="+ Session["UserID"];
            SqlCommand cmd=new SqlCommand(query,con);
            SqlDataAdapter sda=new SqlDataAdapter(cmd);
            DataTable dt=new DataTable();
            sda.Fill(dt);
            rptbudget.DataSource = dt;
            rptbudget.DataBind();
        }

        protected void btnnext_Click(object sender, EventArgs e)
        {
            Response.Redirect("MonthlyExpense.aspx");
        }
    }
}