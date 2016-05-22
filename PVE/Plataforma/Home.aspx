<%@ Page MasterPageFile="Principal.master" Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Plataforma.Home" %>
<asp:Content ContentPlaceHolderId="Body" runat="server">
    <div style="width:1464px">
        <div style="width:669px; float:left; margin-left:20px; align-content:center">
            
                                <h3>&nbsp;Plataforma Virtual de Emprendimiento</h3>
                                <br />
            <div style="font-size:18px;">              
             La PVE se visualiza como el conjunto de tecnologías destinadas a promover fomentar desarrollar y gestionar el emprendimiento en la comunidad universitaria de PUCMM. Se espera que esta plataforma permita a los Gestores, Asesores y Mentores gestionar de manera efectiva el centro de emprendimiento, y a que a su vez Estudiantes, Profesores, Personal Administrativo y Egresados puedan someter sus ideas de negocios con el objetivo de ser evaluadas desarrolladas e incubadas en el centro de emprendimiento con miras a la creación de empresas sostenibles que contribuyen al desarrollo de la República Dominicana</span></span>.<br />
                               </div>
                                   
                                   <br />
        </div>
                  
           
           
        <div style="width:624px; float:none; margin-left:720px; ">
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
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" AllowPaging="True" GridLines="None" Width="582px" ForeColor="#333333">
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