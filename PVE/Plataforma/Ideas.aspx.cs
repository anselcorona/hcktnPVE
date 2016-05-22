using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Plataforma
{
    public partial class Ideas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT [Codigo], [Fecha], [Descripcion], [Estado] FROM [IdeasEmprendedoras] where Estado ='Pendiente' or Estado = 'Aprobada' ORDER BY[Fecha] DESC";

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = DropDownList1.SelectedIndex;

            if (index == 2)
            {
                SqlDataSource1.SelectCommand = "SELECT [Codigo], [Fecha], [Descripcion], [Estado] FROM [IdeasEmprendedoras] where Estado ='Aprobada' ORDER BY [Fecha] DESC";
            }
            else if (index == 1)
            {
                SqlDataSource1.SelectCommand = "SELECT [Codigo], [Fecha], [Descripcion], [Estado] FROM [IdeasEmprendedoras] where Estado ='Pendiente' ORDER BY [Fecha] DESC";
            }
            else {

                SqlDataSource1.SelectCommand = "SELECT [Codigo], [Fecha], [Descripcion], [Estado] FROM [IdeasEmprendedoras] where Estado !='Rechazada' ORDER BY[Fecha] DESC";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Idea"] = GridView1.SelectedRow.Cells[0].Text;

            // LINK A NUEVA PAGINA DE DIFERENTES IDEAS
            Label1.Text = Session["Idea"].ToString();
        }


        

    }
}