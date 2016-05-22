using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Plataforma
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT [Fecha], [Contenido], [Campus] FROM [Novedades] Where [Fecha] >= '"+ DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "' ORDER BY [Fecha] DESC";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT [Fecha], [Contenido], [Campus] FROM [Novedades] Where [Fecha] >= '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "' and Campus = 'CSTI' ORDER BY [Fecha] DESC";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT [Fecha], [Contenido], [Campus] FROM [Novedades] Where [Fecha] >= '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "' and Campus = 'CSTA' ORDER BY [Fecha] DESC";

        }
    }
}