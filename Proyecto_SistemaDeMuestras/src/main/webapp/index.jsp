<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%
    // Simular un inicio de sesión para el usuario
    session.setAttribute("usuarioNombre", "Juan Pérez");
    session.setAttribute("usuarioRol", "admin"); // Puedes cambiar a "analista" o "otro"
    
    // Eliminar la redirección para que se muestre la página principal
    // response.sendRedirect(request.getContextPath() + "/panel");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Sistema de Muestras - Inicio</title>
    <meta charset="UTF-8">
    <!-- Incluir Bootstrap desde CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h1 class="text-center">Bienvenido al Sistema de Muestras</h1>
                <p class="text-center">Usuario: <strong><%= session.getAttribute("usuarioNombre") %></strong></p>
                <p class="text-center">Rol: <strong><%= session.getAttribute("usuarioRol") %></strong></p>
            </div>
        </div>
    </div>

    <!-- Incluir los scripts de Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
