<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PVE.Login" %>

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
            <asp:TextBox ID="TextBox1" runat="server" Width="268px"></asp:TextBox>
            <br />
            <br />
            Contrasena:<br />
            <asp:TextBox ID="TextBox2" runat="server" Width="266px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Ingresar" Width="272px" />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Crear Nueva Cuenta" Width="271px" />
        </div>
    
    </div>
    </form>
</body>
</html>
