using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Principal : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string user;
        try
        {
            user = Session["User"].ToString();
        }
        catch
        {
            user = null;
        }
        if (user == null)
        {
            LoginPanelLabel.Text = "Conectate!";
            HyperLink1.NavigateUrl = "Login.aspx";
        }
        else
        {
            LoginPanelLabel.Text = "Mi Panel";
            HyperLink1.NavigateUrl = "#";
        }
    }
}
