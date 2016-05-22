using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ValidarIdeas : System.Web.UI.Page
{
    public string CodigoSelect;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        CodigoSelect = GridView1.SelectedRow.Cells[1].Text.ToString();
        string helper = CodigoSelect;
        Label1.Text = ObtenerCantidadComentariosBuenos(helper).ToString();
        Label2.Text = ObtenerCantidadComentariosMalos(helper).ToString();
    }

    private int ObtenerCantidadComentariosMalos(string Cod)
    {

        SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        con.Open();

        string strSql = "SELECT COUNT(Codigo) FROM Comentarios Where IdeaImplicada=" + Cod + " and Tipo ='Contraargumento'";
        SqlCommand command = new SqlCommand(strSql, con);
        int count = Convert.ToInt32(command.ExecuteScalar());
        con.Close();

        return count;
    }


    private int ObtenerCantidadComentariosBuenos(String Cod)
    {

        SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        con.Open();

        string strSql = "SELECT COUNT(Codigo) FROM Comentarios Where IdeaImplicada=" + Cod + " and Tipo ='Aporte'";
        SqlCommand command = new SqlCommand(strSql, con);
        int count = Convert.ToInt32(command.ExecuteScalar());
        con.Close();

        return count;
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        SqlCommand cmd = new SqlCommand("update IdeaEmprendedora set Estado = 'Declinada' where codigo = " + CodigoSelect, con);

        try

        {
            con.Open();
            cmd.ExecuteNonQuery();


            con.Close();

            //Se agrego Correctamente!
            Server.Transfer("AdminPanel.aspx", true);
        }

        catch

        {



        }


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        SqlCommand cmd = new SqlCommand("update IdeaEmprendedora set Estado = 'Aprobada' where codigo = " + CodigoSelect, con);

        try

        {
            con.Open();
            cmd.ExecuteNonQuery();


            con.Close();

            //Se agrego Correctamente!
            Server.Transfer("AdminPanel.aspx", true);
        }

        catch

        {



        }
    }
}