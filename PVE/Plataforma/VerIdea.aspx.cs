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
            try
            {
                
                SqlDataSource3.SelectCommand = "SELECT [Codigo], [Fecha], [Problemas], [Alternativas], [Soluciones], [Metrics], [Proposicion], [Conceptos], [VentajasInjustas], [Canales], [SegmentosClientes], [Adopters], [EstructuraCosto], [RevenueStreams], [Autor], [Estado] FROM [IdeasEmprendedoras] where [Codigo] = " + Session["Idea"].ToString();
                SqlDataSource2.SelectCommand = "SELECT [Autor], [Contenido], [Tipo], [Fecha] FROM [Comentarios] where IdeaImplicada =" + Session["Idea"].ToString() + " ORDER BY [Fecha] DESC";
            }
            catch { Server.Transfer("Ideas.aspx"); }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {



           
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                int size = e.Row.Cells.Count;
                if (e.Row.Cells[3].Text == "Aporte")
                {
                    for (int i = 0; i < size; i++)
                    {
                        e.Row.BackColor = System.Drawing.ColorTranslator.FromHtml("#99ffbb");
                    }
                    e.Row.Cells[3].ForeColor = System.Drawing.Color.Green;
                }
                else {


                    for (int i = 0; i < size; i++)
                    {
                        e.Row.BackColor = System.Drawing.ColorTranslator.FromHtml("#ff7575");
                    }
                    e.Row.Cells[3].ForeColor = System.Drawing.ColorTranslator.FromHtml("#6f0000");
                }


            
        }
    }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("AddComment.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = DropDownList1.SelectedIndex;

            if (index == 2)
            {
                SqlDataSource2.SelectCommand = "SELECT [Autor], [Contenido], [Tipo], [Fecha] FROM [Comentarios] where IdeaImplicada =" + Session["Idea"].ToString() + "and Tipo='Contraargumento' ORDER BY [Fecha] DESC";
            }
            else if (index == 1)
            {
                SqlDataSource2.SelectCommand = "SELECT [Autor], [Contenido], [Tipo], [Fecha] FROM [Comentarios] where IdeaImplicada =" + Session["Idea"].ToString() + "and Tipo='Aporte' ORDER BY [Fecha] DESC";
            }
            else if (index == 0) {
                SqlDataSource2.SelectCommand = "SELECT [Autor], [Contenido], [Tipo], [Fecha] FROM [Comentarios] where IdeaImplicada =" + Session["Idea"].ToString() + "and (Tipo='Aporte' or Tipo='Contraargumento') ORDER BY [Fecha] DESC";
            }
         
        }



      
    }
}