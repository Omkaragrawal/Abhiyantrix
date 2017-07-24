using System;
using System.Data.SqlClient;
using System.Drawing;

namespace Abhiyantri
{
    public partial class LoginSignup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            //Button1.Enabled = false;
            //CompleteSignup.Enabled = false;
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            //MultiView1.SetActiveView(Login);
        }

        public void Button1_Click(object sender, EventArgs e)
        {
            //Label4.Text = "It Works";
            //Label4.Visible = true;
            //Label4.ForeColor = Color.Red;
            try
            {

                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=OMKAR-PC;Initial Catalog='ABHIYANTRIX PROJECT';Integrated Security=True";
                string query = "select * from Login where UserEmail = @Username and Password = @Password";
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.Add(new SqlParameter("@Username", TextBox7.Text));
                cmd.Parameters.Add(new SqlParameter("@Password", TextBox8.Text));
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["username"] = dr["UserName"];
                    string cmpUsern = dr["UserType"].ToString();
                    /* if (cmpUsern.ToString() == (string)"Client")
                     {
                         Response.Redirect("ClientPage.aspx");
                     }
                     else if ((string)cmpUsern == "Engineer")
                     {
                         Response.RedirectPermanent("WebForm1.aspx");
                     }*/

                    if (cmpUsern == "Client")
                    {
                        Response.Redirect("ClientPage.aspx");
                    }
                    else if (cmpUsern == "Engineer")
                    {
                        Response.Redirect("~/WebForm1.aspx");
                    }
                }
                else
                {
                    Label4.Text = "Error";
                    Label4.Visible = true;
                    Label4.ForeColor = Color.Red;
                }
                con.Close();

            }
            catch (Exception exception)
            {
                Label4.Text += exception.Message + "   E.InnerException:  " + exception.InnerException;
                Label4.Enabled = true;
                //throw;
            }
        }

        protected void TextBox11_TextChanged(object sender, EventArgs e)
        {

        }

        public void SUSbmtBtn_Click(object sender, EventArgs e)
        {
            Response.Write("I did something");
            //try
            //{

            //    SqlConnection con = new SqlConnection();
            //    con.ConnectionString =@"Data Source = OMKAR-PC ; Initial Catalog=ABHIYANTRIX PROJECT;Integrated Security = true;";
            //    con.Open();
            //    string query = "select * from Login where UserEmail = @UserEmail or UserName = @UserName";
            //    SqlCommand cmd = new SqlCommand(query, con);
            //    cmd.Parameters.Add(new SqlParameter("@UserEmail", TextBox11.Text));
            //    cmd.Parameters.Add(new SqlParameter("@UserName", UNametxt.Text));
            //    SqlDataReader dr = cmd.ExecuteReader();
            //    if (dr.Read())
            //    {
            //        String usermail = null;
            //        String username = null;
            //        usermail = dr["UserEmail"].ToString();
            //        username = dr["UserName"].ToString();
            //        if (usermail != null)
            //        {
            //            MailElbl.Visible = true;
            //        }
            //        if (username != null)
            //        {
            //            UNameElbl.Visible = true;
            //        }
            //    }
            //    else
            //    {
            //        Response.Redirect("~/SignupSuccess.aspx");
            //    }
            //}
            //catch (Exception exception)
            //{
            //    Label5.Text = exception.Message;
            //}

        }

        protected void DoSomething(object sender, EventArgs e)
        {
            //Label4.Text = "It Works";
            //Label4.Visible = true;
            //Label4.ForeColor = Color.Red;
            try
            {

                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=OMKAR-PC;Initial Catalog='ABHIYANTRIX PROJECT';Integrated Security=True";
                string query = "select * from Login where UserEmail = @Username and Password = @Password";
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.Add(new SqlParameter("@Username", TextBox7.Text));
                cmd.Parameters.Add(new SqlParameter("@Password", TextBox8.Text));
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["username"] = dr["UserName"];
                    string cmpUsern = dr["UserType"].ToString();
                    /* if (cmpUsern.ToString() == (string)"Client")
                     {
                         Response.Redirect("ClientPage.aspx");
                     }
                     else if ((string)cmpUsern == "Engineer")
                     {
                         Response.RedirectPermanent("WebForm1.aspx");
                     }*/

                    if (cmpUsern == "Client")
                    {
                        Response.Redirect("ClientPage.aspx");
                    }
                    else if (cmpUsern == "Engineer")
                    {
                        Response.Redirect("~/WebForm1.aspx");
                    }
                }
                else
                {
                    Label4.Text = "Error";
                }
                con.Close();

            }
            catch (Exception exception)
            {
                Label4.Text += exception.Message + "   E.InnerException:  " + exception.InnerException;
                Label4.Enabled = true;
                //throw;
            }
        }

        protected void SignupSubmit(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=OMKAR-PC;Initial Catalog='ABHIYANTRIX PROJECT';Integrated Security=True";
                string query = "select * from [Login] where UserEmail = @UserEmail or UserName = @UserName";
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.Add(new SqlParameter("@UserEmail", TextBox11.Text));
                cmd.Parameters.Add(new SqlParameter("@UserName", UNametxt.Text));
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    String email = null;
                    String UName = null;
                    email = dr["UserEmail"].ToString();
                    UName = dr["UserName"].ToString();
                    if (email != null)
                    {
                        MailElbl.Visible = true;
                    }
                    if (UName != null)
                    {
                        UNameElbl.Visible = true;
                    }
                    con.Close();
                }
                //else
                //{
                //    Response.Redirect("SignupSuccess.aspx");
                //}
            else
            {
                SqlConnection con2 = new SqlConnection();
                con2.ConnectionString = @"Data Source=OMKAR-PC;Initial Catalog='ABHIYANTRIX PROJECT';Integrated Security=True";
                string query2 = "insert into [Login] (UserName,UserEmail,Password,UserType) VALUES (@UserName,@UserEmail,@Password,@UserType);";
                con2.Open();
                SqlCommand cmd2 = new SqlCommand(query2, con2);
                cmd2.Parameters.AddWithValue("@UserName", UNametxt.Text);
                cmd2.Parameters.AddWithValue("@UserEmail", TextBox11.Text);
                cmd2.Parameters.AddWithValue("@Password", TextBox13.Text);
                cmd2.Parameters.AddWithValue("@UserType", DropDownList1.SelectedValue);
                SqlDataReader dr2 = cmd2.ExecuteReader();
                if (dr.Read())
                {
                    Result.Text = "SUCCESS     " + dr.Read();
                    Result.ForeColor = Color.GhostWhite;
                    Result.Visible = true;
                }
                else
                {
                    Result.Text = "SUCCESS";
                    Result.ForeColor = Color.GhostWhite;
                    Result.Visible = true;
                    Response.Redirect("SignupSuccess.aspx");
                }
                    con2.Close();
            }
                //Result.Text = "Success";
                //Result.ForeColor = Color.GhostWhite;
                //Result.Visible = true;
        }
            catch (Exception exception)
            {
                Console.WriteLine(exception.Message);
                Result.Text = exception.Message;
                Result.Visible = true;
            }
           

        }
    }
}