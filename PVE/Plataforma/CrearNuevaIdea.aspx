<%@ Page MasterPageFile="Principal.master" Language="C#" AutoEventWireup="true" CodeFile="CrearNuevaIdea.aspx.cs" Inherits="Plataforma.CrearNuevaIdea" %>

<asp:Content ContentPlaceHolderId="Body" runat="server">

    <p>
        Agregar Nueva Idea de Emprendimiento</p>
    <p>
        &nbsp;</p>
    <p>
        Breve Descripcion de la idea:</p>
    <p>
        <asp:TextBox ID="DescripcionTXT" runat="server" Width="745px"></asp:TextBox>
    </p>
    <p>
        Problema:</p>
    <asp:TextBox ID="TXTProblema" runat="server" Height="109px" TextMode="MultiLine" Width="744px"></asp:TextBox>
    <br />
    <br />
    Alternativas Existentes:<br />
    <br />
    <asp:TextBox ID="TXTAlternativas" runat="server" Height="89px"  TextMode="MultiLine" Width="739px"></asp:TextBox>
    <br />
    <br />
    Solucion:<br />
    <br />
    <asp:TextBox ID="TextSoluciones" runat="server" Height="89px" TextMode="MultiLine" Width="739px"></asp:TextBox>
    
    <br />
    <br />
    Llaves Metricas:<br />
    <br />
    <asp:TextBox ID="TextMetricas" runat="server" Height="89px"  TextMode="MultiLine" Width="739px"></asp:TextBox>
    
    <br />
    <br />
    Proposicion de Valor Unico:<br />
    <br />
    <asp:TextBox ID="TextPropocision" runat="server" Height="89px"  TextMode="MultiLine" Width="739px"></asp:TextBox>
    
    <br />
    <br />
    Conceptos de Alto Nivel:<br />
    <br />
    <asp:TextBox ID="TextConceptos" runat="server" Height="89px"  TextMode="MultiLine" Width="739px"></asp:TextBox>
    
    <br />
    <br />
    Ventajas Injustas:<br />
    <br />
    <asp:TextBox ID="TextVentajas" runat="server" Height="89px"  TextMode="MultiLine" Width="739px"></asp:TextBox>
    
    <br />
    <br />
    Canales:<br />
    <br />
    <asp:TextBox ID="TextCanales" runat="server" Height="89px"  TextMode="MultiLine" Width="739px"></asp:TextBox>
    
    <br />
    <br />
    Segmentos Para los Clientes:<br />
    <br />
    <asp:TextBox ID="TextSegmentos" runat="server" Height="89px"  TextMode="MultiLine" Width="739px"></asp:TextBox>
    
    <br />
    
    <br />
    Primeros en Adoptar:<br />
    <br />
    <asp:TextBox ID="TextPrimerosAdop" runat="server" Height="89px"  TextMode="MultiLine" Width="739px"></asp:TextBox>
    
    <br />
    <br />
    Estructura de Costos:<br />
    <br />
    <asp:TextBox ID="TextEstructura" runat="server" Height="89px"  TextMode="MultiLine" Width="739px"></asp:TextBox>
    
    <br />
    
    <br />
    Flujos de Ingresos:<br />
    <br />
        <asp:TextBox ID="TextFlujo" runat="server" Height="89px"  TextMode="MultiLine" Width="739px"></asp:TextBox>
    
    <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [IdeasEmprendedoras]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Height="46px" Text="Agregar Idea" Width="292px" OnClick="Button1_Click" />
    <p>
        &nbsp;</p>

 </asp:Content>

