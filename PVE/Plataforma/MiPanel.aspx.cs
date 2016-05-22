using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Plataforma
{
    public partial class MiPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
                else if (e.Row.Cells[3].Text == "Pendiente")
                {
                    for (int i = 0; i < size; i++)
                    {
                        e.Row.BackColor = System.Drawing.ColorTranslator.FromHtml("#eedc82");
                    }
                    e.Row.Cells[3].ForeColor = System.Drawing.ColorTranslator.FromHtml("#665d1e");
                }
                else
                {
                    for (int i = 0; i < size; i++)
                    {
                        e.Row.BackColor = System.Drawing.ColorTranslator.FromHtml("#ff7575");
                    }
                    e.Row.Cells[3].ForeColor = System.Drawing.ColorTranslator.FromHtml("#6f0000");


                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = DropDownList1.SelectedIndex;

            if (index == 2)
            {
                SqlDataSource1.SelectCommand = "SELECT [Codigo], [Fecha], [Descripcion], [Estado] FROM [IdeasEmprendedoras] where [Estado]='Declinada' ORDER BY [Fecha] DESC";
            }
            else if (index == 1)
            {
                SqlDataSource1.SelectCommand = "SELECT [Codigo], [Fecha], [Descripcion], [Estado] FROM [IdeasEmprendedoras] where [Estado]='Pendiente' ORDER BY [Fecha] DESC";
            }
            else if (index == 0)
            {
                SqlDataSource1.SelectCommand = "SELECT [Codigo], [Fecha], [Descripcion], [Estado] FROM [IdeasEmprendedoras] ORDER BY [Fecha] DESC";
            }
            else
            {
                SqlDataSource1.SelectCommand = "SELECT [Codigo], [Fecha], [Descripcion], [Estado] FROM [IdeasEmprendedoras] where [Estado]='Aprobada' ORDER BY [Fecha] DESC";
            }
        }
    }
}
    