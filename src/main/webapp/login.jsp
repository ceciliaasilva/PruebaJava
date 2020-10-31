<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page session="true" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title> PPS </title>
    <link  rel="icon" sizes="152px" href="https://drive.google.com/uc?export=view&id=1wD2pilGb_McT5LDFCOmfQd0p53O3P8Xz" type="image/png" />
    <link rel= "stylesheet" href= "https://drive.google.com/uc?export=view&id=1GqIVYgLDRvI1I1xvaXGKuE1xlq8lcm7r">

</head>
<body>
<div align="left">
    <a href="/"><img src="https://drive.google.com/uc?export=view&id=1iRAvXNx0rHtzogPV-wwucx72YVdbX7jD" width="50" height="50"></a>
</div>
<div class="contenedor-form">
    <div class="toggle">
        <span> Crear cuenta</span>
    </div>
    <div class="formulario">
        <h2>Iniciar Sesión</h2>
        <form action="SERVLOGIN" method="post">
            <input type="text" name="txtUser" placeholder="Usuario" required>
            <input type="password" name="txtPass" placeholder="Contraseña" required>
            <input type="submit"  value="Acceder" name="btnLogin">
        </form>
    </div>

    <div class="formulario">
        <h2>Crea tu cuenta</h2>
        <form action="#">
            <input type="text" placeholder="Usuario" required>
            <input type="password" placeholder="Contraseña" required>
            <input type="email" placeholder="Correo electronico" required>
            <input type="text" placeholder="Teléfono" required>

            <input type="submit"  value="Registrarse">
        </form>
    </div>
    <div class="reset-password">
        <a href="#">Olvidé mi Contraseña</a>
    </div>
</div>
    <script src="https://drive.google.com/uc?export=view&id=1Q8RX4zhEuF5DCA2tX9sOmDjrIP5Y_rhc"></script>
    <script src="https://drive.google.com/uc?export=view&id=1gKxmxwLhdJpyZCuW8n24RE2DJ8_t1t3Q"></script>
<%
    HttpSession sesion = request.getSession();
    int nivel = 0;
    if(request.getAttribute("nivel")!=null){
        nivel = (Integer) request.getAttribute("nivel");
        if(nivel == 1){
            sesion.setAttribute("user", request.getAttribute("user"));
            sesion.setAttribute("nivel", 1);
            out.println("<script>alert('Acceso Exitoso');</script>");
            response.sendRedirect("Admin/Admin.jsp");
        }
        else{
            if(nivel == 2){
                sesion.setAttribute("user", request.getAttribute("user"));
                sesion.setAttribute("nivel", 2);
                out.println("<script>alert('Acceso Exitoso');</script>");
                response.sendRedirect("Usuario/Usuario.jsp");
            }
            else{
                out.println("<script>alert('Usuario o contraseña incorrecta');</script>");
                response.sendRedirect("login.jsp");
            }
        }
    }
    if(request.getParameter("cerrar")!=null){
        sesion.invalidate();
    }
%>
</body>
</html>