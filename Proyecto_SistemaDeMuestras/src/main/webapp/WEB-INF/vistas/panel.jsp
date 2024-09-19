<%-- 
    Document   : panel
    Created on : 4 sept. 2024, 15:14:42
    Author     : oliverjoelloconlopez
--%>

<%@ page session="true" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Menú Principal - Sistema de Muestras</title>
    <meta charset="UTF-8">
    <!-- Incluir Bootstrap desde CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <header class="bg-dark text-white text-center py-4">
        <h1>Bienvenido, ${sessionScope.usuarioNombre}</h1>
    </header>

    <div class="container mt-5">
        <h2>Opciones disponibles</h2>

        <ul class="list-group mt-3">
            <!-- Mostrar opciones según el rol del usuario -->
            <c:choose>
                <!-- Si es Administrador -->
                <c:when test="${sessionScope.usuarioRol == 'admin'}">
                    <li class="list-group-item"><a href="${pageContext.request.contextPath}/usuarios">Gestión de Usuarios</a></li>
                    <li class="list-group-item"><a href="${pageContext.request.contextPath}/solicitudes">Gestión de Solicitudes</a></li>
                    <li class="list-group-item"><a href="${pageContext.request.contextPath}/muestras">Gestión de Muestras</a></li>
                </c:when>
                <!-- Si es Analista -->
                <c:when test="${sessionScope.usuarioRol == 'analista'}">
                    <li class="list-group-item"><a href="${pageContext.request.contextPath}/solicitudes">Ver Solicitudes Asignadas</a></li>
                    <li class="list-group-item"><a href="${pageContext.request.contextPath}/muestras">Ver Muestras</a></li>
                </c:when>
                <!-- Otros roles -->
                <c:otherwise>
                    <li class="list-group-item">No tienes opciones disponibles.</li>
                </c:otherwise>
            </c:choose>
        </ul>
    </div>

    <footer class="bg-dark text-white text-center py-3 mt-5">
        <p>&copy; 2024 Sistema de Gestión de Muestras</p>
    </footer>

    <!-- Incluir los scripts de Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
