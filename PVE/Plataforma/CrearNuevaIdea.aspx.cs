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

            Label1.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = ObtenerCantidadIdeas();
            try
            {
                AgregarIdea(DescripcionTXT.Text, ContenidoTXT.Text, Session["User"].ToString(), ObtenerCantidadIdeas());
            }
            catch {
                Label1.Text = "Error";
            }

        }

        private void AgregarIdea(string desc, string cont, string user, int codigo) {
            SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

           
                SqlCommand cmd = new SqlCommand("Insert into IdeasEmprendedoras(Codigo,Descripcion,Contenido,Autor,Estado,Fecha) values(" + codigo + ",'" + desc + "','" + cont + "','" + user + "','Pendiente','" +DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")+"')", con);

                try

                {
                    con.Open();
                    cmd.ExecuteNonQuery();


                    con.Close();

                    //Se agrego Correctamente!
                    Server.Transfer("Home.aspx", true);
                }

                catch

                {
                Label1.Text = "Favor Completar todos los campos correctamente";
                   

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