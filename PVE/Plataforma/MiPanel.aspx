<%@ Page MasterPageFile="Principal.master" Language="C#" AutoEventWireup="true" CodeFile="MiPanel.aspx.cs" Inherits="Plataforma.MiPanel" %>
<asp:Content ContentPlaceHolderId="Body" runat="server">
    <h3>&nbsp;</h3>
    
        <asp:Button ID="Button1" runat="server" Height="48px" OnClick="Button1_Click" Text="Desconectarse" Width="372px" Font-Size="12pt" />
    
    <p>&nbsp;</p>
    <h3>Mi Panel</h3>
 
    <br />
    Mis Ideas de Emprendimiento:<br />
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="32px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="120px">
        <asp:ListItem>Todos</asp:ListItem>
        <asp:ListItem>Pendientes</asp:ListItem>
        <asp:ListItem>Declinadas</asp:ListItem>
        <asp:ListItem>Aceptadas</asp:ListItem>
    </asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Codigo" DataSourceID="SqlDataSource1" Width="919px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound">
        <Columns>
            <asp:BoundField DataField="Codigo" HeaderText="Codigo" ReadOnly="True" SortExpression="Codigo" />
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha">
            <ItemStyle Width="250px" />
            </asp:BoundField>
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
            <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
            <asp:CommandField SelectText="Ver Idea Completa" ShowSelectButton="True">
            <ItemStyle Width="200px" />
            </asp:CommandField>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <br />
    <asp:Image ID="Image1" Width="130px" Height="130px" runat="server" ImageUrl="~/assets/img/img.fw.png" />
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Codigo], [Fecha], [Descripcion], [Estado] FROM [IdeasEmprendedoras] ORDER BY [Fecha] DESC"></asp:SqlDataSource>
    <br />

    </asp:Content>