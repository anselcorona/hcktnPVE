<%@ Page MasterPageFile="Principal.master" Language="C#" AutoEventWireup="true" CodeFile="ValidarIdeas.aspx.cs" Inherits="ValidarIdeas" %>

<asp:Content ContentPlaceHolderId="Body" runat="server">

    <p>
        Validar Ideas</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Codigo" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1007px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField SelectText="Seleccionar" ShowSelectButton="True" />
                <asp:BoundField DataField="Codigo" HeaderText="Codigo" ReadOnly="True" SortExpression="Codigo" />
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Codigo], [Fecha], [Descripcion], [Estado] FROM [IdeasEmprendedoras] WHERE ([Estado] = @Estado) ORDER BY [Fecha] DESC">
            <SelectParameters>
                <asp:Parameter DefaultValue="Pendiente" Name="Estado" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        Detalles sobre la Idea:</p>
    <p>
        &nbsp;</p>
    <p>
        Cantidad de Comentarios Buenos:<asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#33CC33"></asp:Label>
    </p>
    <p>
        Cantidad de Comentarios Malos:<asp:Label ID="Label2" runat="server" Text="Label" ForeColor="Red"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        Cambiar Estado</p>
    <p>
        &nbsp;</p>
    <div style="width:400px">
        <div style="width:100px; float:left">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="Red" Height="39px"  Text="Declinar" Width="102px" OnClick="Button1_Click" />
        </div>
        <div style="width:100px; float:none; margin-left:110px">
            <asp:Button ID="Button2" runat="server" Font-Bold="True" ForeColor="#33CC33" Height="39px" Text="Aprobar" Width="102px" OnClick="Button2_Click" />
        </div>
    </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

</asp:Content>