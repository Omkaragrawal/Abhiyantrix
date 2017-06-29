using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Abhiyantri
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        //    /* EField[0][]= Mechanical  where EField[0][0]= Automotive
        //     *                          where EField[0][1]= Naval Architecture
        //     *                          where EField[0][2]= Aerospace
        //     *                          where EField[0][3]= Production
        //     *                          where EField[0][4]= Acoustical 
        //     *                          
        //     * 
        //     * EField[1][]= Computer    where EField[1][0] = Software Designer
        //     *                          where EField[1][1] = Software Testers
        //     *                          where EField[1][2] = Maintanance
        //     *                          where EField[1][3] = Network Management
        //     *                          where EField[1][4] = Web Developer
        //     *                          
        //     * 
        //     * EField[2][]= IT      where EField[2][0] =
        //     *                      where EField[2][0] =
        //     *                      where EField[2][0] =
        //     *                      where EField[2][0] =
        //     *                      where EField[2][0] =
        //     *                      
        //     * 
        //     * EField[3][]= Electronics     where EField[3][0] =
        //     *                              where EField[3][1] =
        //     *                              where EField[3][2] =
        //     *                              where EField[3][3] =
        //     *                              where EField[3][4] =
        //    */
        //    String[,] EField = new String[4, 5] 
        //{ 
        //      { "Automotive", "Naval Architecture","Aerospace","Production","Acoustical"},//Mechanical Dept 
        //      { "Software Designer","Software Testers","Maintanance","Network Management","Web Developer"},//Computer Dept 
        //      { "","","","",""}, //IT Dept
        //      { "","","","",""} //Electrinics dept
        //};
        //    String UserType;

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}