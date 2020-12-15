<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    HttpSession sesion = request.getSession();
%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title> PPS </title>
        <link  rel="icon" sizes="152px" href="https://drive.google.com/uc?export=view&id=1wD2pilGb_McT5LDFCOmfQd0p53O3P8Xz" type="image/png" />
        <link rel= "stylesheet" href= "https://drive.google.com/uc?export=view&id=1MNdaRPn4qbuS0rG0ctlZIYkpor-5xoiZ">
    </head>

    <body>
       <div class="contenedor-form">
         
           <div  class="toggle">
               <span> Buscar</span>
           </div>
           <div class="formulario" display = none align= center>
             <h1> Modificación de Parking</h1> <br>
               <h2>Ingrese el nro de piso</h2>
              <form action="datosmodParking.jsp" method="get">
                  <input name= "txtNropiso" type="text" placeholder="Numero de piso" required>
                  <input type="submit"  value="Buscar" name="btnBuscar">
            </form>
           </div>
            <div class="cancelar">
                <a href="home.jsp"><input type="submit"  value="Cancelar"></a>
              </div>
       </div>
           <script src="https://drive.google.com/uc?export=view&id=1Q8RX4zhEuF5DCA2tX9sOmDjrIP5Y_rhc"></script>
           <script src="https://drive.google.com/uc?export=view&id=1gKxmxwLhdJpyZCuW8n24RE2DJ8_t1t3Q"></script>
   <%
    if(request.getAttribute("verdcc")!=null){
        out.println("<script>alert('Piso modificado con exito');</script>");
    }
    else
        out.println("<script>alert('Piso no encontrado o no modificado (ignore el mensaje si acaba de abrir la pagina)');</script>");
%>
    </body>
</html>