<%-- 
    Document   : recuperar
    Created on : 18/09/2024, 23:39:34
    Author     : Yoel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recuperar Contraseña</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/68c04c5188.js" crossorigin="anonymous"></script>
    <link  rel="stylesheet"   href="../css/style.css"  type="text/css"/>
    </head>
    <body>
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
               <img src="../img/bloqueado.png" alt="">
                <h2 >Recuperar contraseña</h2>
                <p class="texto">¿Tienes problemas para iniciar sesión?</p>
                <p class="texto">Ingresa tu correo electrónico, teléfono o nombre de usuario y te enviaremos un enlace para que recuperes el acceso a tu cuenta.</p>
                
                
                <label for="correo">Correo:</label>
                <input type="text" id="correo" name="correo"  placeholder="Ingresa tu correo">
                <br>
                <br>
                <button type="submit">Enviar</button>
               
            </form>


         </main>
        
  
    </body>
</html>
