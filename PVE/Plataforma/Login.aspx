<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Plataforma.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div  style="align-content:center;">
    
        <div style="align-content:center; width:600px; margin: 0 auto;">
            Conectate!<br />
            <br />
            Usuario:<br />
            <asp:TextBox ID="TextUsername" runat="server" Width="268px"></asp:TextBox>
            <br />
            <br />
            Contrasena:<br />
            <asp:TextBox ID="TextPassword" runat="server" Width="266px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="LoginBTN" runat="server" Text="Ingresar" Width="272px" OnClick="Button1_Click" />
            <br />
            <asp:Button ID="RegisterBTN" runat="server" Text="Crear Nueva Cuenta" Width="271px" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Usuarios]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="Label1" ForeColor="red" runat="server" Text="Label"></asp:Label>
        </div>
    
    </div>
    </form>
</body>
</html>
