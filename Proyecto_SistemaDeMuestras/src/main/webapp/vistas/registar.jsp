<%-- 
    Document   : login
    Created on : 5/09/2024, 23:57:37
    Author     : Yoel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Crear Cuenta</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/68c04c5188.js" crossorigin="anonymous"></script>
    <link  rel="stylesheet"   href="../css/style.css"  type="text/css"/>
  </head>
  <body >
       <header class="header">
        <div class="logo">
            <img src="../img/folder.png" alt="Logo de la marca">
        </div>
        <nav>
           <ul class="nav-links">
                <li><a href="#">INICIO</a></li>
                <li><a href="#">SERVICIOS</a></li>
                <li><a href="#">SOBRE NOSOTROS</a></li>
           </ul>            
        </nav>
        <a class="btn" href="#"><button>INICIAR SESIÓN</button></a>
        <a class="btn" href="#"><button>REGISTRARSE</button></a>
         </header>

         <main class="container">
            <form class="formulario">
               <img src="img/user.png" alt="">
                <h2>Crear Cuenta</h2>
                <label for="nombres">Nombres:</label>
                <input type="text" id="nombres" name="nombres"  placeholder="Ingresa tus nombres">
                <label for="nombre">Apellidos:</label>
                <input type="text" id="apellidos" name="apellidos"  placeholder="Ingresa tus apellidos">
                <label for="correo">Correo:</label>
                <input type="text" id="correo" name="correo"  placeholder="Ingresa tu correo">
                <label for="email">Password:</label>
                <input type="password" id="password" name="password" placeholder="Ingresa tu contraseña" required>
                <br>
                <button type="submit">Enviar</button>
               
            </form>


         </main>
        
  
  </body>
</html>
