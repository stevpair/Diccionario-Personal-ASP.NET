<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="DiccionarioV2.vistas.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../style/estilos.css" rel="stylesheet" />
    <script src="../javascript/jquery-1.11.3.min.js"></script>
</head>
<body>
    <div id="cabecera">
        <h1>Mi Diccionario</h1>
        <p runat="server" id="bienvnida"></p>
    </div>
    <div>
        <form id="searchbox" action="#" runat="server">
            <input id="search" type="text" placeholder="Busqueda"/>
            <asp:Button id="submit" runat="server" CssClass="btn-success" Text="Buscar" OnClick="submit_Click"/>  
        </form>
    </div>
    <div id="contenido">
        <p>Palabra:<label></label></p>
        <p>Tamaño:<label></label></p>
        <p>Vocales:<label></label></p>
        <p>Consonante:<label></label></p>
        <p>Significado:</p>
        <textarea name="s1" style="height: 73px; width: 303px"></textarea><br />
        

    </div>
</body>
</html>
