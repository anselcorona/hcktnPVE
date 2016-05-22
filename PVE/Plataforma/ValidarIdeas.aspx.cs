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
        Label1.Visible = false;
        Label2.Visible = false;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        CodigoSelect = GridView1.SelectedRow.Cells[1].Text.ToString();
        Session["Idea"] = CodigoSelect;
        string helper = CodigoSelect;
        Label1.Visible = true;
        Label2.Visible = true;
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

        

        try

        {
            SqlCommand cmd = new SqlCommand("update IdeasEmprendedoras set Estado = 'Declinada' where codigo = " + Session["Idea"].ToString(), con);
            con.Open();
            cmd.ExecuteNonQuery();


            con.Close();

            //Se agrego Correctamente!
            Server.Transfer("AdminPanel.aspx", true);
        }

        catch(Exception se)

        {

           

        }


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

       
        try

        {
            SqlCommand cmd = new SqlCommand("update IdeasEmprendedoras set Estado = 'Aprobada' where codigo = " + Session["Idea"].ToString(), con);

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