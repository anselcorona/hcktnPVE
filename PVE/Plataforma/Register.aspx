<%@ Page MasterPageFile="Principal.master" Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Plataforma.Register" %>
<asp:Content ContentPlaceHolderId="Body" runat="server">
    <div>
    <div style="margin-left:400px;">
        Crea Tu Cuenta!<br />
        <br />
        Usuario:<br />
        <asp:TextBox ID="TextUsername" runat="server" Width="287px"></asp:TextBox>
        <br />
        <br />
        Nombre:<br />
        <asp:TextBox ID="TextName" runat="server" Width="286px"></asp:TextBox>
        <br />
        <br />
        Apellido:<br />
        <asp:TextBox ID="TextApellido" runat="server" Width="283px"></asp:TextBox>
        <br />
        <br />
        Correo Electronico:<br />
        <asp:TextBox ID="TextEmail" runat="server" TextMode="Email" Width="281px"></asp:TextBox>
        <br />
        <br />
        Contrasena:<br />
        <asp:TextBox ID="TextPass" runat="server" TextMode="Password" Width="278px"></asp:TextBox>
        <br />
        <br />
        Repetir Contrasena:<br />
        <asp:TextBox ID="TextPass2" runat="server" TextMode="Password" Width="273px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Crear Cuenta" Width="285px" />
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label"></asp:Label>
        <br />
    </div>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Comentarios]"></asp:SqlDataSource>
    
  </asp:Content>

