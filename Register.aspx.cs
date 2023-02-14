using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using System.Timers;
using System.Threading;

namespace ExpenseTrackerWeb
{
    public partial class Register : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["Exp"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckUserExists())
            {
                Response.Write("<script>alert('UserName Already Exists.Try Different UserName');</script>");
            }
            else
            {
                SignUpNewUser();
                ClearBox();
            }

        }

        bool CheckUserExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from tblLogin where UserName='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

                con.Close();

                Response.Write("<script>alert('Sign Up Successfully.  Go to User Log In Page to Log In');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>Swal.fire('" + ex.Message + "');</script>");
                return false;
            }

        }

        void ClearBox()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";

        }
        void SignUpNewUser()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into tblLogin (UserName,Password,Email) values (@UU,@PP,@EM)", con);
                cmd.Parameters.AddWithValue("@UU", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@PP", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@EM", TextBox3.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Registration Successfull. Let's go to Login page.');</script>");
                //Thread.Sleep(5000);
                Response.Redirect("Login.aspx");


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //protected void Button1_Click(object sender, EventArgs e) // Register Button
        //{
        //    if (TextBox1.Text != string.Empty && TextBox2.Text != string.Empty && TextBox3.Text != string.Empty)
        //    {
        //        using (SqlConnection Exp = new SqlConnection(GetConnectionString()))
        //        {
        //            SqlCommand cmd = new SqlCommand("select UserName from tblLogin where UserName=@UserName", Exp);
        //            cmd.CommandType = CommandType.Text;
        //            cmd.Parameters.AddWithValue("@UserName", TextBox1.Text.Trim());

        //            //SqlDataAdapter da = new SqlDataAdapter(cmd);
        //            //DataTable dt = new DataTable();

        //            //da.Fill(dt);
        //            //cmd.Parameters.AddWithValue("@UserName", TextBox1.Text.Trim());
        //            //string q = "select UserName from tblLogin where UserName=" + TextBox1.Text;
        //            //SqlCommand cmd = new SqlCommand(q);
        //            //if (dt.Rows.Count > 0)
        //            //{
        //            //    Response.Write("<script>alert('UserName Already Exists')</script>");
        //            //    Response.Redirect("Register.aspx");
        //            //    return;
        //            //}


        //            try
        //            {
        //                Exp.Open();
        //                SqlDataReader dr = cmd.ExecuteReader();
        //                cmd.ExecuteNonQuery();
        //                if (dr.HasRows)
        //                {
        //                    Response.Write("<script>alert('UserName Already Exists')</script>");
        //                }
        //                else
        //                {
        //                    Exp.Close();
        //                    //SqlConnection CON = new SqlConnection(GetConnectionString());
        //                    if (Exp.State == ConnectionState.Closed)
        //                    {
        //                        Exp.Open();
        //                    }
        //                    dr.Close(); // <- too easy to forget
        //                    dr.Dispose(); // <- too easy to forget
        //                    Exp.Close();
        //                    cmd.Parameters.Clear();
        //                    cmd = new SqlCommand("insert into tblLogin (UserName,Password,Email) values (@UU,@PP,@EM)", Exp);
        //                    cmd.CommandType = CommandType.Text;
        //                    cmd.Parameters.AddWithValue("@UU", TextBox1.Text.Trim());
        //                    cmd.Parameters.AddWithValue("@PP", TextBox2.Text.Trim());
        //                    cmd.Parameters.AddWithValue("@EM", TextBox3.Text.Trim());
        //                    //cmd.Parameters.AddWithValue("@rl", " ");
        //                    cmd.ExecuteNonQuery();
        //                    int i = cmd.ExecuteNonQuery();
        //                    Exp.Close();
        //                    if (i >= 1)
        //                    {
        //                        Response.Redirect("Home.aspx");
        //                    }
        //                    else
        //                    {
        //                        Response.Write("<script>alert('Can't Register!');</script>");
        //                    }
        //                }
        //            }
        //            catch (Exception ex)
        //            {
        //                Response.Write("<script>alert('Something went wrong! Contact your devloper + " + ex.Message + "')</script>");

        //            }
        //            finally
        //            {
        //                Exp.Close();
        //            }
        //        }

        //    }
        //    else
        //    {
        //        Response.Write("<script>alert('Textbox is Empty')</script>");
        //    }
        //}
    }
}