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
            SqlDataSource2.SelectCommand = "SELECT [Autor], [Contenido], [Tipo] FROM [Comentarios] where IdeaImplicada =" + Session["Idea"].ToString();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                int size = e.Row.Cells.Count;
                if (e.Row.Cells[2].Text == "Aporte")
                {
                    for (int i = 0; i < size; i++)
                    {
                        e.Row.BackColor = System.Drawing.ColorTranslator.FromHtml("#99ffbb");
                    }
                    e.Row.Cells[2].ForeColor = System.Drawing.Color.Green;
                }
                else {


                    for (int i = 0; i < size; i++)
                    {
                        e.Row.BackColor = System.Drawing.ColorTranslator.FromHtml("#ff7575");
                    }
                    e.Row.Cells[2].ForeColor = System.Drawing.Color.Red;
                }


            
        }
    }
    }
}