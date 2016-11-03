using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Budget.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["configstring"].ToString());
            con.Open();
            try
            {
                string query = "select * from registration where EmailID='" + txtemailid.Text + "'"+ "and password='"+txtpassword.Text+"'";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Session["FirstName"] = dr[3].ToString();
                    Session["UserID"]= dr[0].ToString();
                    Response.Redirect("Budget.aspx?email=" + dr[1].ToString());
                }
                cmd.Dispose();

            }
            catch (Exception ex)
            {
                Response.Write("Errrrr" + ex.Message);
            }
            con.Close();
        }
        protected void btnregister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}