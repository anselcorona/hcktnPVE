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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }


        private String VerificarCuenta(string user, string pass)
        {
            String Passworddd = null;
            SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SELECT * FROM Usuarios where Usuario = '" + user + "'", con);
            con.Open();

            IDataReader dataReader = cmd.ExecuteReader();
            {
                //Loop through your results
                while (dataReader.Read())
                {
                    Passworddd = (Convert.ToString(dataReader["Password"]));
                }

                if (Passworddd != null)
                {
                    if (Passworddd == pass)
                    {
                        return user;
                    }
                    else { return null; }
                }
                else { return null; }
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string usuario = VerificarCuenta(TextUsername.Text, TextPassword.Text);

            Session["User"] = usuario;

            if (usuario != null)
            {
                //ir a otra pagina
                Server.Transfer("Default2.aspx");
            }

            else
            {
                Label1.Visible = true;
                Label1.Text = "Datos Incorrectos Introducidos, Favor Corregir";
            }
        }
    }


}