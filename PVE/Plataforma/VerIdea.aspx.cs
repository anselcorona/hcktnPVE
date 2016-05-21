using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Plataforma
{
    public partial class VerIdea : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                string user = Session["User"].ToString();
            }
            catch
            {
                Server.Transfer("Login.aspx");
            }

            SqlDataSource1.SelectCommand = "SELECT[Codigo], [Fecha], [Contenido], [Autor] FROM[IdeasEmprendedoras] where codigo =" + Session["Idea"].ToString();
        }
    }
}