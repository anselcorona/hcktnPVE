<%@ Page MasterPageFile="Principal.master" Language="C#" AutoEventWireup="true" CodeFile="VerIdea.aspx.cs" Inherits="Plataforma.VerIdea" %>
<asp:Content ContentPlaceHolderId="Body" runat="server">

    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Codigo" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="213px" Width="1432px">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="Codigo" HeaderText="Codigo" ReadOnly="True" SortExpression="Codigo" />
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
            <asp:BoundField DataField="Contenido" HeaderText="Contenido" SortExpression="Contenido" />
            <asp:BoundField DataField="Autor" HeaderText="Autor" SortExpression="Autor" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Codigo], [Fecha], [Contenido], [Autor] FROM [IdeasEmprendedoras]"></asp:SqlDataSource>

</asp:Content>