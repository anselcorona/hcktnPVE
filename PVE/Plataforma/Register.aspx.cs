using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Plataforma
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        private void AgregarCuenta(string user, string pass, string pass2, string name, string apellido, string correo)
        {

            SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            if (pass == pass2 && pass!= "")
            {
                SqlCommand cmd = new SqlCommand("Insert into Usuarios(Usuario,Nombre,Apellido,Correo,Contrasena,Permisos) values('" + user + "','" + name + "','" + apellido + "','" + correo + "','" + pass + "'," +  "0)", con);

                try

                {
                    con.Open();
                    cmd.ExecuteNonQuery();


                    con.Close();

                    //Se agrego Correctamente!
                    Server.Transfer("Login.aspx", true);
                }

                catch

                {
                 
                    Label1.Visible = true;
                    Label1.Text = "Datos Invalidos Agregados, Verifique Por Favor";

                }
            }
            else {
                Label1.Visible = true;
                Label1.Text = "Haz Introducido Contrasenas Diferentes";
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            AgregarCuenta(TextUsername.Text,TextPass.Text,TextPass2.Text,TextName.Text,TextApellido.Text,TextEmail.Text);
        }
    }
}