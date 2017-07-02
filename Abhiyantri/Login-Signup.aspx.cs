using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace Abhiyantrix
{
    public partial class Login_Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source = OMKAR-PC ; Initial Catalog=ABHIYANTRIX PROJECT;Integrated Security = true;";
                con.Open();
                string query = "select * from Login where UserEmail = @Username and Password = @Password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.Add(new SqlParameter("@Username", TextBox7.Text));
                cmd.Parameters.Add(new SqlParameter("@Password", TextBox8.Text));
                SqlDataReader DR = cmd.ExecuteReader();
                if (DR.Read())
                {
                    Session["username"] = DR["UserName"];
                    string cmpUsern = DR["UserType"].ToString();
                   /* if (cmpUsern.ToString() == (string)"Client")
                    {
                        Response.Redirect("ClientPage.aspx");
                    }
                    else if ((string)cmpUsern == "Engineer")
                    {
                        Response.RedirectPermanent("WebForm1.aspx");
                    }*/

                    if (cmpUsern.ToString() == (string)"Client")
                    {
                        Response.Redirect("ClientPage.aspx");
                    }
                    else if ((string)cmpUsern == "Engineer")
                    {
                        Response.Redirect("WebForm1.aspx");
                    }
                }
                else
                {
                    Label4.Text = "Error";
                }
                con.Close();

            }
            catch (Exception E)
            {
                Label4.Text+= E.Message + "   E.InnerException:  " + E.InnerException;
                //throw;
            }
        }

        protected void TextBox11_TextChanged(object sender, EventArgs e)
        {

        }

    }
}