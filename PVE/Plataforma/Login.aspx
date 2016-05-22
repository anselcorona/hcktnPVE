<%@ Page MasterPageFile="Principal.master" Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Plataforma.Login" %>


<asp:Content ContentPlaceHolderId="Body" runat="server">
    <div  style="align-content:center;">
    
        <div style="align-content:center; width:600px; margin: 0 auto;">
            <h3>Conectate!</h3><br />
            
           <h5> Usuario:</h5>
            <h5> <br />
            <asp:TextBox ID="TextUsername" runat="server" Width="268px"></asp:TextBox>
            <br />
            <br />
            Contrasena:</h5>
            <h5> <br /></h5>
            <asp:TextBox ID="TextPassword" runat="server" Width="268px" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="LoginBTN" runat="server" Text="Ingresar" Width="273px" OnClick="Button1_Click" Height="43px" />
            <br />
            <br />
            <asp:Button ID="RegisterBTN" runat="server" Text="Crear Nueva Cuenta" Width="273px" Height="43px" OnClick="RegisterBTN_Click1" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Usuarios]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="Label1" ForeColor="red" runat="server" Text="Label"></asp:Label>
        </div>
    
    </div>
    </asp:Content>
