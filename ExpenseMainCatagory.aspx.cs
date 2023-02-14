using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ExpenseTrackerWeb
{
    public partial class ExpenseMainCatagory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                bindGrid();
            }
        }
        private string GetConnectionString()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["Exp"].ConnectionString;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(GetConnectionString());
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Insert into tblExpenseType(ExpenseType) values(@ExpenseType)", con);
                //cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@ExpenseType", TextBox1.Text.Trim());
                int i = 0;
                i = cmd.ExecuteNonQuery();
                // insert update delete query thakle eta use korte hoy
                if (i > 0)
                {
                    Response.Write("<script>alert('Record saved successfully')</script>");
                    TextBox1.Text = string.Empty;
                    TextBox1.Focus();
                }
                else
                {
                    Response.Write("<script>alert('Record not saved...Error!')</script>");
                }
                con.Close();
                bindGrid();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Something went wrong! Contact your devloper +" + ex.Message + "')</script>");
            }
        }
    
        protected void bindGrid()
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlDataAdapter da = new SqlDataAdapter("select * from tblExpenseType order by ExpenseTypeID desc", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('Record not found!')</script>");
            }
        }
    }
}