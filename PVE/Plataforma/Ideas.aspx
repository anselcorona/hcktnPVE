<%@ Page MasterPageFile="Principal.master" Language="C#" AutoEventWireup="true" CodeFile="Ideas.aspx.cs" Inherits="Plataforma.Ideas" %>
<asp:Content ContentPlaceHolderId="Body" runat="server">

    Listado de ideas de Emprendimiento<br />
    <br />
    Ver las ideas por su estado:<br />
    <div style="width:600px;">
        <div style="width:200px; float:left">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="31px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="265px">
        <asp:ListItem>Todas las ideas</asp:ListItem>
        <asp:ListItem>Ideas pendientes por Aprobacion</asp:ListItem>
        <asp:ListItem>Ideas aprobadas</asp:ListItem>
    </asp:DropDownList>
        </div>

    <div style="width:200px; float:right">
        <asp:Button ID="Button1" runat="server" Text="Agregar Nueva Idea" Height="29px" Width="190px" OnClick="Button1_Click" />
    </div>
        </div>
    <br />
    <br />
    <br />

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" DataKeyNames="Codigo" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound" Width="1463px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo" ReadOnly="True">
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha">
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Left" Width="250px" />
            </asp:BoundField>
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" >
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado">
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
            </asp:BoundField>
            <asp:CommandField SelectText="Ver Idea Completa" ShowSelectButton="True">
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Font-Size="14px" />
            </asp:CommandField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle  BackColor="#204b95" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        
    </asp:GridView>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Codigo], [Fecha], [Descripcion], [Estado] FROM [IdeasEmprendedoras]"></asp:SqlDataSource>
   
    </asp:Content>