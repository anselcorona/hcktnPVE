using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Plataforma
{
    public partial class CrearNuevaIdea : System.Web.UI.Page
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


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = ObtenerCantidadIdeas()+1;
            try
            {
                AgregarIdea(DescripcionTXT.Text, TXTProblema.Text,TextSoluciones.Text,TXTAlternativas.Text,TextMetricas.Text,TextPropocision.Text,TextConceptos.Text,TextVentajas.Text,TextCanales.Text,TextSegmentos.Text,TextPrimerosAdop.Text,TextEstructura.Text,TextFlujo.Text, Session["User"].ToString(), ObtenerCantidadIdeas());
            }
            catch {
             
            }

        }

        private void AgregarIdea(string desc, string problema,string soluciones,string alternativas,string metrics,string Proposicion,string conceptos,string ventajas,string canales,string segmentos,string adopters,string Estructura,string revenue, string user, int codigo) {
            SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

           
                SqlCommand cmd = new SqlCommand("Insert into IdeasEmprendedoras(Codigo,Descripcion,Problemas,Soluciones,Alternativas,Metrics,Proposicion,Conceptos,VentajasInjustas,Canales,SegmentosClientes,Adopters,EstructuraCosto,RevenueStreams,Autor,Estado,Fecha) values(" + codigo + ",'" + desc + "','" + problema + "','" + soluciones + "','" + alternativas + "','" + metrics + "','" + Proposicion + "','" + conceptos + "','" + ventajas + "','" + canales + "','" + segmentos + "','" + adopters + "','" + Estructura + "','" + revenue + "','" + user + "','Pendiente','" +DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")+"')", con);

                try

                {
                    con.Open();
                    cmd.ExecuteNonQuery();


                    con.Close();

                    //Se agrego Correctamente!
                    Server.Transfer("Ideas.aspx", true);
                }

                catch

                {
               //NADA PASA
                   

                }
            

        }


        private int ObtenerCantidadIdeas() {

            SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            con.Open();

            string strSql = "SELECT COUNT(Codigo) FROM IdeasEmprendedoras";
            SqlCommand command = new SqlCommand(strSql, con);
            int count = Convert.ToInt32(command.ExecuteScalar());
            con.Close();

            return count;
        }
        

    }
}