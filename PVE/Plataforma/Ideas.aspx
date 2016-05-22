<%@ Page MasterPageFile="Principal.master" Language="C#" AutoEventWireup="true" CodeFile="Ideas.aspx.cs" Inherits="Plataforma.Ideas" %>
<asp:Content ContentPlaceHolderId="Body" runat="server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha">
            <HeaderStyle BorderColor="#003399" BackColor="#204b95" BorderStyle="Solid" BorderWidth="1px" />
            <ItemStyle BorderColor="#003399" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" Width="300px" />
            </asp:BoundField>
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion">
            <HeaderStyle BorderColor="#003399" BackColor="#204b95" BorderStyle="Solid" BorderWidth="1px" />
            <ItemStyle BorderColor="#003399" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:CommandField SelectText="Ver Idea Completa" ShowSelectButton="True">
            <ItemStyle BorderColor="#003399" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" Width="300px" />
            </asp:CommandField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle  BackColor="#204b95" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Fecha], [Descripcion], [Autor] FROM [IdeasEmprendedoras] ORDER BY [Fecha] DESC"></asp:SqlDataSource>

 </asp:Content>