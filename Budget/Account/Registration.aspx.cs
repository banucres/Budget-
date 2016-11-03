using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Budget
{
    public partial class Registration : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["configstring"].ToString());
            con.Open();
            SqlCommand cmd;
            try
            {
                
                SqlParameter sp1 = new SqlParameter("@EmailID", txtemailid.Text);
                SqlParameter sp2 = new SqlParameter("@Password", txtpassword.Text);
                SqlParameter FirstName = new SqlParameter("@FirstName", txtfirstname.Text);
                SqlParameter LastName = new SqlParameter("@LastName", txtlastname.Text);
                string query = "Insert Into Registration values(@EmailID,@Password,@FirstName,@LastName)";
                cmd = new SqlCommand(query, con);
                cmd.Parameters.Add(sp1);
                cmd.Parameters.Add(sp2);
                cmd.Parameters.Add(FirstName);
                cmd.Parameters.Add(LastName);
                cmd.ExecuteNonQuery();
                txtdbdone.Text = "row is added";
                Response.Redirect("Login.aspx");
                cmd.Dispose();
            }
            catch (Exception ex)
            {
                txtdbdone.Text = ex.Message;
            }

            con.Close();
        }
    }
}