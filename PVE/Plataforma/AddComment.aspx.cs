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
    public partial class AddComment : System.Web.UI.Page
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
            AgregarComentario(DropDownList1.SelectedItem.Text,TextBox1.Text,(ObtenerCantidadComentarios()+1).ToString());
        }

        private void AgregarComentario(string tipo, string coment, string codigo)
        {
            SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);


            SqlCommand cmd = new SqlCommand("Insert into Comentarios(Codigo,Autor,Contenido,IdeaImplicada,Tipo,Fecha) values(" + codigo + ",'" + Session["User"].ToString() + "','" + coment + "','" + Session["Idea"] + "','" + tipo + "','" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "')", con);

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

            

                }
            }




        private int ObtenerCantidadComentarios()
        {

            SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            con.Open();

            string strSql = "SELECT COUNT(Codigo) FROM Comentarios";
            SqlCommand command = new SqlCommand(strSql, con);
            int count = Convert.ToInt32(command.ExecuteScalar());
            con.Close();

            return count;
        }



        private string GetValue(string columna) {
            string n = null;
            SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SELECT * FROM IdeasEmprendedoras where Codigo = '" + Session["Idea"].ToString()  + "'", con);
            con.Open();

            System.Data.IDataReader dataReader = cmd.ExecuteReader();
            {
                //Loop through your results
                while (dataReader.Read())
                {
                    n = (Convert.ToString(dataReader[columna]));
                }

               
            }
            return n;
        }
    }
}