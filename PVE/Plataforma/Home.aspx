<%@ Page MasterPageFile="Principal.master" Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Plataforma.Home" %>
<asp:Content ContentPlaceHolderId="Body" runat="server">
    <div style="width:1464px">
        <div style="width:669px; float:left; margin-left:20px; align-content:center">
            
                                <h3>&nbsp;Plataforma Virtual de Emprendimiento</h3>
                                <br />
                                La PVE se visualiza como el conjunto de tecnologías destinadas a promover fomentar desarrollar y gestionar el emprendimiento en la comunidad universitaria de PUCMM. Se espera que esta plataforma permita a los Gestores, Asesores y Mentores gestionar de manera efectiva el centro de emprendimiento, y a que a su vez Estudiantes, Profesores, Personal Administrativo y Egresados puedan someter sus ideas de negocios con el objetivo de ser evaluadas desarrolladas e incubadas en el centro de emprendimiento con miras a la creación de empresas sostenibles que contribuyen al desarrollo de la República Dominicana</span></span>.</div>
                  
           
           
        <div style="width:432px; float:none; margin-left:720px; ">
            <h3>&nbsp; Noticias</h3>
            Campus:<br />
            <div style="width:400px">
<div style="width:100px; float:left">
    <asp:Button ID="Button1" runat="server" Height="39px" Text="CSTI" Width="102px" OnClick="Button1_Click" />
</div>
            <div style="width:100px; float:none; margin-left:110px">
                <asp:Button ID="Button2" runat="server" Height="39px" Text="CSTA" Width="102px" OnClick="Button2_Click" />
            </div>
                </div>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" GridLines="Vertical" Width="399px">
          <AlternatingRowStyle BackColor="#DCDCDC" />
          <Columns>
              <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
              <asp:BoundField DataField="Contenido" HeaderText="Contenido" SortExpression="Contenido" />
              <asp:BoundField DataField="Campus" HeaderText="Campus" SortExpression="Campus" />
          </Columns>
          <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
          <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
          <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
          <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F1F1F1" />
          <SortedAscendingHeaderStyle BackColor="#0000A9" />
          <SortedDescendingCellStyle BackColor="#CAC9C9" />
          <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Fecha], [Contenido], [Campus] FROM [Novedades] ORDER BY [Fecha] DESC"></asp:SqlDataSource>
        </div>




    </div>
 </asp:Content>