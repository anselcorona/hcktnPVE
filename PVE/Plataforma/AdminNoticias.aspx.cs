using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminNoticias : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        
        string per=null;
        try
        {
            per = Session["Permisos"].ToString();
        }

        catch
        {
            Server.Transfer("Login.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        AddNoticia((ObtenerCantidadNoticias() + 1).ToString(), TextBox1.Text, DropDownList1.SelectedItem.Text);
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

    private void AddNoticia(string codigo, string cont, string campus) {
        SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

      
            SqlCommand cmd = new SqlCommand("Insert into Novedades(Codigo,Campus,Contenido,Fecha) values(" + codigo + ",'" + campus + "','" + cont + "','" + Calendar1.SelectedDate.ToString("yyyy-MM-dd HH:mm:ss") + "')", con);

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