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
            Server.Transfer("VerIdea.aspx");
            
        }





        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                int size = e.Row.Cells.Count;
                if (e.Row.Cells[3].Text == "Aprobada")
                {
                    for (int i = 0; i < size; i++)
                    {
                        e.Row.BackColor = System.Drawing.ColorTranslator.FromHtml("#99ffbb");
                    }
                    e.Row.Cells[3].ForeColor = System.Drawing.Color.Green;
                }

               
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("CrearNuevaIdea.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("CrearNuevaIdea.aspx");
        }
    }
}