using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string user = Session["User"].ToString();
            if (!permisosUsuario(user))
            {
                Server.Transfer("Home.aspx");
            }
            else { Session["Permisos"] = "1"; }
        }
        catch
        {
            Server.Transfer("Login.aspx");
        }

        CantidadUsuariosLabel.Text = ObtenerCantidadUsuarios().ToString();
        CantidadNoticiasLabel.Text = ObtenerCantidadNoticias().ToString();
        CantidadIdeasPendientesLabel.Text = ObtenerCantidadIdeasPendientes().ToString();
        CantidadIdeasLabel.Text = ObtenerCantidadIdeas().ToString();

    }
    private bool permisosUsuario(string user) {

        string a = "0";
        SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand("SELECT * FROM Usuarios where Usuario = '" + user + "'", con);
        con.Open();

        IDataReader dataReader = cmd.ExecuteReader();
        {
            //Loop through your results
            while (dataReader.Read())
            {
                a = (Convert.ToString(dataReader["Permisos"]));
            }

            if (Convert.ToInt32(a) > 0)
            {
                return true;
            }
            else { return false; }
          
        }
    }

    private int ObtenerCantidadUsuarios()
    {

        SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        con.Open();

        string strSql = "SELECT COUNT(Usuario) FROM Usuarios";
        SqlCommand command = new SqlCommand(strSql, con);
        int count = Convert.ToInt32(command.ExecuteScalar());
        con.Close();

        return count;
    }

    private int ObtenerCantidadNoticias()
    {

        SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        con.Open();

        string strSql = "SELECT COUNT(Codigo) FROM Novedades";
        SqlCommand command = new SqlCommand(strSql, con);
        int count = Convert.ToInt32(command.ExecuteScalar());
        con.Close();

        return count;
    }

    private int ObtenerCantidadIdeas()
    {

        SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        con.Open();

        string strSql = "SELECT COUNT(Codigo) FROM IdeasEmprendedoras";
        SqlCommand command = new SqlCommand(strSql, con);
        int count = Convert.ToInt32(command.ExecuteScalar());
        con.Close();

        return count;
    }

    private int ObtenerCantidadIdeasPendientes()
    {

        SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        con.Open();

        string strSql = "SELECT COUNT(Codigo) FROM IdeasEmprendedoras where estado ='Pendiente'";
        SqlCommand command = new SqlCommand(strSql, con);
        int count = Convert.ToInt32(command.ExecuteScalar());
        con.Close();

        return count;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("AdminNoticias.aspx");
    }
}