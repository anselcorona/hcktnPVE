<%@ Page MasterPageFile="Principal.master" Language="C#" AutoEventWireup="true" CodeFile="CrearNuevaIdea.aspx.cs" Inherits="Plataforma.CrearNuevaIdea" %>

<asp:Content ContentPlaceHolderId="Body" runat="server">

    <p>
        Agregar Nueva Idea de Emprendimiento</p>
    <p>
        &nbsp;</p>
    <p>
        Breve Descripcion de la idea:</p>
    <p>
        <asp:TextBox ID="DescripcionTXT" runat="server" Width="745px"></asp:TextBox>
    </p>
    <p>
        Contenido Completo:</p>
    <asp:TextBox ID="ContenidoTXT" runat="server" Height="347px" TextMode="MultiLine" Width="922px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Height="46px" Text="Agregar Idea" Width="292px" OnClick="Button1_Click" />
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [IdeasEmprendedoras]"></asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red"></asp:Label>
    </p>

 </asp:Content>

