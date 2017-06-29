using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ClientSide
{


    public partial class ClientPage : System.Web.UI.Page
    {
        string[] Choi = new string[1]{"Selected Item List"};

        

        
       public static readonly String[,] EField = 
        { 
              { "Automotive", "Naval Architecture","Aerospace","Production","Acoustical"},//Mechanical Dept 
              { "Software Designer","Software Testers","Maintanance","Network Management","Web Developer"},//Computer Dept 
              { "","","","",""}, //IT Dept
              { "","","","",""} //Electronics dept
        };
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Keys.Count == 0)
            {
                Response.Redirect("Login-Signup.aspx");
            }
            else
            {
                Label1.Text = Session["username"].ToString();
            }
            DropDownList2.Enabled = false;
            DropDownList2.Visible = false;
            //Label4.Text =Convert.ToString(EField.GetLength(1));
            
    
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {


            Int32 choice1;
            choice1 = DropDownList1.SelectedIndex;



            try
            {
                
                             
                
                
                switch (choice1)
                {
                    case 1:
                        Array.Resize(ref Choi, Choi.Length+1);
                        Choi.SetValue(DropDownList1.SelectedItem.Text, Choi.Length - 1);
                        DropDownList2.Items.Clear();
                        DropDownList2.Items.Add("");
                        for (int i = 0; i < EField.GetLength(1); i++)
                        {
                            DropDownList2.Items.Add(Convert.ToString(EField.GetValue(0,i)));
                        }
                        DropDownList2.Enabled = true;
                        DropDownList2.Visible = true;
                        DropDownList2_SelectedIndexChanged();

                        break;
                    case 2:
                        Array.Resize(ref Choi, Choi.Length+1);
                        Choi.SetValue(DropDownList1.SelectedItem.Text, Choi.Length - 1);
                        DropDownList2.Items.Clear();
                        DropDownList2.Items.Add("");
                        for (int i = 0; i < EField.GetLength(1); i++)
                        {
                            DropDownList2.Items.Add(Convert.ToString(EField.GetValue(1,i)));
                        }
                        DropDownList2.Enabled = true;
                        DropDownList2.Visible = true;
                        DropDownList2_SelectedIndexChanged();
                        break;
                    case 3:
                        Array.Resize(ref Choi, Choi.Length+1);
                        Choi.SetValue(DropDownList1.SelectedItem.Text, Choi.Length - 1);

                        DropDownList2.Items.Clear();
                        DropDownList2.Items.Add("");

                        for (int i = 0; i <EField.GetLength(1); i++)
                        {
                            DropDownList2.Items.Add(Convert.ToString(EField.GetValue(2,i)));
                        }

                        DropDownList2.Enabled = true;
                        DropDownList2.Visible = true;

                        DropDownList2_SelectedIndexChanged();
                        break;
                    case 4:
                        Array.Resize(ref Choi, Choi.Length+1);
                        Choi.SetValue(DropDownList1.SelectedItem.Text, Choi.Length - 1);
                        DropDownList2.Items.Clear();
                        DropDownList2.Items.Add("");
                        for (int i = 0; i < EField.GetLength(1); i++)
                        {
                            DropDownList2.Items.Add(Convert.ToString(EField.GetValue(3,i)));
                        }
                        DropDownList2.Enabled = true;
                        DropDownList2.Visible = true;
                        DropDownList2_SelectedIndexChanged();
                        break;
                    default: break;
                }





            }

            catch (Exception E)
            {

                Label4.Text = E.Message + "   E.InnerException: " + E.InnerException + "   E.Source: " + E.Source + "   E.StackTrace: " + E.StackTrace + "   E.TargetSite: " + E.TargetSite ;
            }
          




        }

        private void DropDownList2_SelectedIndexChanged()
        {
            TextBox1.Text = "";
            for (int i = 0; i < Choi.Length; i++)
            {
                TextBox1.Text += Choi[i] + "      ";
                
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Array.Resize(ref Choi, Choi.Length + 1);
            Choi.SetValue(DropDownList2.SelectedItem.Text, Choi.Length - 1);
            DropDownList2_SelectedIndexChanged();
        }        
    }


}

