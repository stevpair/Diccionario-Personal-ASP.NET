<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="DiccionarioV2.src.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../css/font-awesome.min.css" rel="stylesheet" />
    <link href="../style/StyleLogin.css" rel="stylesheet" />
    <script src="../javascript/jquery-1.11.3.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <div id="login">
            <h1>Iniciar Sesión<i class="fa fa-key fa-3x"></i></h1>
            <div class="campo">
                <label for="txtUsuario">Usuario:</label>
                <asp:Textbox runat="server" ID="txtUsuario"/>
            </div>

        <div class="campo">
            <label for="txtPassword">Contraseña:</label>
            <asp:Textbox runat="server" ID="txtPassword" TextMode="Password" />
        </div>
        <div id="divRegistro" style="display:none;">

            <div class="campo">
                <label for="txtVeriPassword">Verificar Contraseña:</label>
                <asp:Textbox runat="server" ID="txtVeriPassword" TextMode="Password" />
            </div>

            <div class="campo">
                <label for="txtNombre">Nombre:</label>
                <asp:Textbox runat="server" ID="txtNombre"/>
            </div>

            <div class="campo">
                <label for="txtNickname">Nickname:</label>
                <asp:Textbox runat="server" ID="txtNickname"/>
            </div>

            <div class="divBotones">
                <a href="#" id="aIngresar">Volver</a>
                <asp:Button ID="btnRegistro" runat="server" Text="Registro" CssClass="btn-success" OnClick="btnRegistro_Click"/>
            </div>

        </div>

            <p id="mensaje" runat="server"></p>

        <div class="divBotones"id="divBotonIngreso">
            <a href="#" id="aRegistro">Reistro</a>
            <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" CssClass="btn-success" OnClick="btnIngresar_Click"/>
        </div>
      </div>
    </div>
    </form>
    <script>

        if ($('#mensaje').Text() === 'Usuario Registrado') {
            $("#divRegistro").slideUp('slow');
            $('#divBotonIngreso').slideDown('fast');
        }

        $('#aRegistro').on('click', function (e) {
            e.preventDefault();
            $("#divRegistro").slideDown('slow');
            $('#divBotonIngreso').slideUp('fast');
        });

        $('#aIngresar').on('click', function (e) {
            e.preventDefault();
            $("#divRegistro").slideUp('slow');
            $('#divBotonIngreso').slideDown('fast');
        });

    </script>
</body>
</html>
