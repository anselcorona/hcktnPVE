<%@ Page MasterPageFile="Principal.master" Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Plataforma.Home" %>


<asp:Content ContentPlaceHolderId="Body" runat="server">
    <div class="main">
        <div class="container tim-container" style="max-width:1500px; padding-top:100px">
            
                                <h2 style="font-family:Arial, Helvetica, sans-serif" class="text-center">Plataforma Virtual de Emprendimiento</h2>
                                <br />
            <p style="font-size: 22px; text-align:justify; font-family:Arial, Helvetica, sans-serif" class="subtitle">              
             La PVE se visualiza como el conjunto de tecnologías destinadas a promover fomentar desarrollar y gestionar el emprendimiento en la comunidad universitaria de PUCMM. Se espera que esta plataforma permita a los Gestores, Asesores y Mentores gestionar de manera efectiva el centro de emprendimiento, y a que a su vez Estudiantes, Profesores, Personal Administrativo y Egresados puedan someter sus ideas de negocios con el objetivo de ser evaluadas desarrolladas e incubadas en el centro de emprendimiento con miras a la creación de empresas sostenibles que contribuyen al desarrollo de la República Dominicana</span></span>.<br />
                               </p>
                                   
                                   <br />
        </div>
                  
           
           
         <div class="container tim-container" style="max-width:800px; padding-top:100px">
            <h2 style=" font-family:'Times New Roman', Times, serif">&nbsp; Noticias</h2>
            <h4 style=" font-family:'Times New Roman', Times, serif">Campus:</h4><br />
            <div style="width:400px">
<div style="width:100px; float:left">
    <asp:Button ID="Button1" runat="server" Height="39px" Text="CSTI" Width="102px" OnClick="Button1_Click" />
</div>
            <div style="width:100px; float:none; margin-left:110px">
                <asp:Button ID="Button2" runat="server" Height="39px" Text="CSTA" Width="102px" OnClick="Button2_Click" />
            </div>
                </div>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" AllowPaging="True" GridLines="None" Width="981px" ForeColor="#333333" Height="283px">
          <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
              <asp:BoundField DataField="Contenido" HeaderText="Contenido" SortExpression="Contenido" />
              <asp:BoundField DataField="Campus" HeaderText="Campus" SortExpression="Campus" />
          </Columns>
          <EditRowStyle BackColor="#2461BF" />
          <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
          <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
          <RowStyle BackColor="#EFF3FB" />
          <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
          <SortedAscendingCellStyle BackColor="#F5F7FB" />
          <SortedAscendingHeaderStyle BackColor="#6D95E1" />
          <SortedDescendingCellStyle BackColor="#E9EBEF" />
          <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Fecha], [Contenido], [Campus] FROM [Novedades] ORDER BY [Fecha] DESC"></asp:SqlDataSource>
        </div>




    </div>
 </asp:Content>