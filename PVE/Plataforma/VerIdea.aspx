<%@ Page MasterPageFile="Principal.master" Language="C#" AutoEventWireup="true" CodeFile="VerIdea.aspx.cs" Inherits="Plataforma.VerIdea" %>
<asp:Content ContentPlaceHolderId="Body" runat="server">
    <div>
        <div style="margin-left:50px">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Codigo" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="213px" Width="1432px">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="Codigo" HeaderText="Codigo" ReadOnly="True" SortExpression="Codigo" >
            <HeaderStyle Font-Bold="True" Font-Size="18px" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" >
            <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="18px" HorizontalAlign="Center" Width="150px" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Contenido" HeaderText="Contenido" SortExpression="Contenido" >
            <HeaderStyle Font-Bold="True" Font-Size="18px" HorizontalAlign="Center" Width="150px" />
            <ItemStyle HorizontalAlign="Center" Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="Autor" HeaderText="Autor" SortExpression="Autor" >
            <HeaderStyle Font-Bold="True" Font-Size="18px" HorizontalAlign="Center" />
            <ItemStyle Font-Bold="True" Font-Size="15px" HorizontalAlign="Center" />
            </asp:BoundField>
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#68b5ff" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#68b5ff" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Codigo], [Fecha], [Contenido], [Autor] FROM [IdeasEmprendedoras]"></asp:SqlDataSource>
            <br />
            <br />
            <div style="width:1300px">
            <div style="width:200px; float:right">
            <asp:Button ID="Button1" runat="server" Height="35px" Text="Agregar Nuevo Comentario" Width="250px" OnClick="Button1_Click" />
                </div>
                </div>
            <br />
            <br />
            Ordenar los Comentarios por Tipo:<br />
    <div style="width:600px;">
        <div style="width:200px; float:left">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="31px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="265px">
        <asp:ListItem>Todos los Comentarios</asp:ListItem>
        <asp:ListItem>Aportes</asp:ListItem>
        <asp:ListItem>Contraargumentos</asp:ListItem>
    
    </asp:DropDownList>
        </div>

    <div style="width:200px; float:right">
    </div>
        </div>
            <br />
            <br />
         <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" Width="1430px" OnRowDataBound="GridView1_RowDataBound" AllowPaging="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha">
                    <HeaderStyle Font-Size="16px" Height="50px" />
                    <ItemStyle Width="200px" Font-Size="14px"/>
                    </asp:BoundField>
                    <asp:BoundField DataField="Autor" HeaderText="Autor" SortExpression="Autor">
                    <HeaderStyle Font-Size="16px" Height="50px" />
                    <ItemStyle Width="150px" Font-Size="14px"/>
                    </asp:BoundField>
                    <asp:BoundField DataField="Contenido" HeaderText="Contenido"  SortExpression="Contenido">
                        <HeaderStyle Font-Size="16px" Height="50px" />
                    <ItemStyle Width="600px" Font-Size="14px"/>
                    </asp:BoundField>
                    <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo">
                        <HeaderStyle Font-Size="16px" Height="50px" />
                    <ItemStyle Width="100px" Font-Size="14px"/>
                    </asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Autor], [Contenido], [Tipo], [Fecha] FROM [Comentarios]"></asp:SqlDataSource>

</div>
    </div>
</asp:Content>