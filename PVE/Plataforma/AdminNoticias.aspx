<%@ Page MasterPageFile="Principal.master" Language="C#" AutoEventWireup="true" CodeFile="AdminNoticias.aspx.cs" Inherits="AdminNoticias" %>




<asp:Content ContentPlaceHolderId="Body" runat="server">





    <div>
        <div style="margin-left:500px; width:500px">
    &nbsp;<br />
    <h3>Agregar Nueva Noticia</h3><br />
    <br />
    
    
    Fecha del Evento:
    
    &nbsp;<asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>

    <br />

    <br />
    Campus:
     
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="125px">
        <asp:ListItem>CSTI</asp:ListItem>
        <asp:ListItem>CSTA</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    Contenido:
        
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Height="83px" TextMode="MultiLine" Width="370px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Height="37px" OnClick="Button1_Click" Text="Agregar Noticia" Width="149px" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Novedades]"></asp:SqlDataSource>
    <br />
        </div>
        </div>
    </asp:Content>
