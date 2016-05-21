<%@ Page MasterPageFile="Principal.master" Language="C#" AutoEventWireup="true" CodeFile="AddComment.aspx.cs" Inherits="Plataforma.AddComment" %>
<asp:Content ContentPlaceHolderId="Body" runat="server">
    <h3>
        
        &nbsp;</h3>
    <h3>
        
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        
    </h3>
    Agregar un nuevo comentario:<br />
    <br />
    Tipo de Comentario.<br />
    <asp:DropDownList ID="DropDownList1" runat="server" Height="62px" Width="211px">
        <asp:ListItem>Aporte</asp:ListItem>
        <asp:ListItem>Contraargumento</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    Contenido:<br />
    <asp:TextBox ID="TextBox1" runat="server" Height="209px" TextMode="MultiLine" Width="580px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Height="45px" OnClick="Button1_Click" Text="Agregar Comentario" Width="227px" />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Comentarios]"></asp:SqlDataSource>
    </asp:Content>