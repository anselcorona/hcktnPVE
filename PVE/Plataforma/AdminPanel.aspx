<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPanel.aspx.cs" Inherits="AdminPanel" %>

 <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   
            <form id="form1" runat="server">
   
            <div id="page-inner">


                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            PVE - Panel De Administracion
                            <br />
                             <small>Plataforma Virtual de Emprendimiento</small>
                        </h1>
                    </div>
                </div>
                <!-- /. ROW  -->

                <div class="row">
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel panel-primary text-center no-boder bg-color-green">
                            <div class="panel-body">
                                <i class="fa fa-bar-chart-o fa-5x"></i>
                                <h3>
                                    <asp:Label ID="CantidadIdeasLabel" runat="server" Text="Label"></asp:Label></h3>
                            </div>
                            <div class="panel-footer back-footer-green">
                                Ideas Agregadas

                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel panel-primary text-center no-boder bg-color-blue">
                            <div class="panel-body">
                                <i class="fa fa-shopping-cart fa-5x"></i>
                                <h3><asp:Label ID="CantidadIdeasPendientesLabel" runat="server" Text="Label"></asp:Label> </h3>
                            </div>
                            <div class="panel-footer back-footer-blue">
                               Ideas Disponibles para Validar 

                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel panel-primary text-center no-boder bg-color-red">
                            <div class="panel-body">
                                <i class="fa fa fa-comments fa-5x"></i>
                                <h3><asp:Label ID="CantidadNoticiasLabel" runat="server" Text="Label"></asp:Label></h3>
                            </div>
                            <div class="panel-footer back-footer-red">
                                Noticias

                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel panel-primary text-center no-boder bg-color-brown">
                            <div class="panel-body">
                                <i class="fa fa-users fa-5x"></i>
                                <h3><asp:Label ID="CantidadUsuariosLabel" runat="server" Text="Label"></asp:Label></h3>
                            </div>
                            <div class="panel-footer back-footer-brown">
                                Usuarios Registrados

                            </div>
                        </div>
                    </div>
                    
                    </div>
                 <div class="panel panel-primary text-center no-boder bg-color-brown">
                            
                            <div class="panel-footer back-footer-blue">
                                <asp:Button BackColor="Transparent" BorderColor="Transparent" ID="Button2" runat="server" Text="Agregar Noticias" OnClick="Button2_Click" /> 

                            </div>
                        </div>

                 <div class="panel panel-primary text-center no-boder bg-color-brown">
                           
                            <div class="panel-footer back-footer-green">
                                <asp:Button ID="Button1" BackColor="Transparent" BorderColor="Transparent"  runat="server" Text="Validar Ideas" OnClick="Button1_Click" /> 

                            </div>
                        </div>
                  


                <div class="row">


                  </div>

            </div>
            <!-- /. PAGE INNER  -->
       
   

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Usuarios]"></asp:SqlDataSource>
            </form>
       
   

</body>

</html>