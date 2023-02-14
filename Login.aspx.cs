using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration; 



namespace ExpenseTrackerWeb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
                {
                    TextBox1.Text = Request.Cookies["UserName"].Value;
                    TextBox2.Attributes["value"] = Request.Cookies["Password"].Value;
                }
            }
        }
        private string GetConnectionString()
        {

            return System.Configuration.ConfigurationManager.ConnectionStrings["Exp"].ConnectionString;
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != string.Empty && TextBox2.Text != string.Empty)
            {
                using (SqlConnection con = new SqlConnection(GetConnectionString()))
                {
                    SqlCommand cmd = new SqlCommand("select UserName , Password from tblLogin where UserName=@UserName  and Password=@Password ", con);
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@UserName", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", TextBox2.Text.Trim());
                    try
                    {
                        con.Open();
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.HasRows)
                        {
                            
                            if(CheckBox1.Checked)
                            {
                                Response.Cookies["UserName"].Value = TextBox1.Text;
                                Response.Cookies["Password"].Value = TextBox1.Text;
                                Response.Cookies["UserName"].Expires = DateTime.Now.AddMinutes(10);
                                Response.Cookies["Password"].Expires = DateTime.Now.AddMinutes(10);
                            }
                            else
                            {
                                Response.Cookies["UserName"].Expires = DateTime.Now.AddMinutes(-10);
                                Response.Cookies["Password"].Expires = DateTime.Now.AddMinutes(-10);
                            }



                            while (dr.Read())
                            {
                                Response.Write("<script>alert('" + dr.GetValue(0).ToString() + "')</script>");
                                Session["UserName"] = dr.GetValue(0).ToString();
                                ///Session["UserType"] = dr.GetValue(2).ToString();

                            }
                            if (Session["UserName"].ToString() == "Administrator")
                                Response.Redirect("Admin.aspx");
                            else
                                Response.Redirect("Home.aspx");

                            //else if (Session["UserType"].ToString() == "Manager")
                            //{
                            //    Response.Redirect("Manager/ManagerHome.aspx");
                            //}
                        }
                        else
                        {
                            Response.Write("<script>alert('Invalid UserID or Password... Use correct email and password Try again')</script>");

                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('Something went wrong! Contact your devloper +" + ex.Message + "')</script>");

                    }
                    finally
                    {
                        con.Close();
                    }
                }

            }




        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}