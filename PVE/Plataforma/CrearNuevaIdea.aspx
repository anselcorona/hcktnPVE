<%@ Page MasterPageFile="Principal.master" Language="C#" AutoEventWireup="true" CodeFile="CrearNuevaIdea.aspx.cs" Inherits="Plataforma.CrearNuevaIdea" %>

<asp:Content ContentPlaceHolderId="Body" runat="server">
    <div>
    <div style="width:700px; margin-left:230px">
    <p>
       <h3> Agregar Nueva Idea de Emprendimiento
           </h3>
           </p>
    <p>
        <h4>Breve Descripcion de la idea:</h4></p>
    <p>
        <asp:TextBox ID="DescripcionTXT" runat="server" Width="745px"></asp:TextBox>
    </p>
    <p>
        <h4>
        Problema:</h4></p>
    <asp:TextBox ID="TXTProblema" runat="server" Height="109px" TextMode="MultiLine" Width="744px"></asp:TextBox>
    <br />
    <br />
    
        <h4>Alternativas Existentes:</h4><br />
    <br />
    <asp:TextBox ID="TXTAlternativas" runat="server" Height="89px"  TextMode="MultiLine" Width="739px"></asp:TextBox>
    <br />
    <br />
   <h4> Solucion:</h4><br />
    <br />
    <asp:TextBox ID="TextSoluciones" runat="server" Height="89px" TextMode="MultiLine" Width="739px"></asp:TextBox>
    
    <br />
    <br />
   <h4> Llaves Metricas(Actividades claves que se pueden medir): </h4><br />
    <br />
    <asp:TextBox ID="TextMetricas" runat="server" Height="89px"  TextMode="MultiLine" Width="739px"></asp:TextBox>
    
    <br />
    <br />
    <h4>Proposicion de Valor Unico(Unico, claro mensaje que establesca porque eres diferente y es positivo apoyarte):</h4><br />
    <br />
    <asp:TextBox ID="TextPropocision" runat="server" Height="89px"  TextMode="MultiLine" Width="739px"></asp:TextBox>
    
    <br />
    <br />
   <h4> Conceptos de Alto Nivel(Explicacián más profunda y conceptual que refieren a tu idea):</h4><br />
    <br />
    <asp:TextBox ID="TextConceptos" runat="server" Height="89px"  TextMode="MultiLine" Width="739px"></asp:TextBox>
    
    <br />
    <br />
    <h4>Ventajas Injustas(Lo dificil de copiar o comprar de tu idea):</h4><br />
    <br />
    <asp:TextBox ID="TextVentajas" runat="server" Height="89px"  TextMode="MultiLine" Width="739px"></asp:TextBox>
    
    <br />
    <br />
    <h4>Canales(Forma de llegar a los clientes):</h4><br />
    <br />
    <asp:TextBox ID="TextCanales" runat="server" Height="89px"  TextMode="MultiLine" Width="739px"></asp:TextBox>
    
    <br />
    <br />
    <h4>Segmentos Para los Clientes(Los clientes objetivo):</h4><br />
    <br />
    <asp:TextBox ID="TextSegmentos" runat="server" Height="89px"  TextMode="MultiLine" Width="739px"></asp:TextBox>
    
    <br />
    
    <br />
   <h4> Primeros en Adoptar(Personas interesadas en la idea):
       </h4><br />
    <br />
    <asp:TextBox ID="TextPrimerosAdop" runat="server" Height="89px"  TextMode="MultiLine" Width="739px"></asp:TextBox>
    
    <br />
    <br />
    <h4>Estructura de Costos(Costos de adquisición, costos de distribucion, entre otros...):</h4><br />
    <br />
    <asp:TextBox ID="TextEstructura" runat="server" Height="89px"  TextMode="MultiLine" Width="739px"></asp:TextBox>
    
    <br />
    
    <br />
    <h4>Flujos de Ingresos(Modelo de flujo, valor a lo largo del tiempo, valor, entre otros):</h4><br />
    <br />
        <asp:TextBox ID="TextFlujo" runat="server" Height="89px"  TextMode="MultiLine" Width="739px"></asp:TextBox>
    
    <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [IdeasEmprendedoras]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Height="46px" Text="Agregar Idea" Width="292px" OnClick="Button1_Click" />
    <p>
        &nbsp;</p>
        </div>
    </div>
 </asp:Content>

