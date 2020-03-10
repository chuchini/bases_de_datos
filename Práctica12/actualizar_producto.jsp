<%-- 
    Document   : actualizar_producto
    Created on : 06-nov-2016, 19:58:42
    Author     : chuch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
        <h1>Introduce el precio del producto: </h1>
        Precio: <input type="text" name="precio">
        <input type="submit" value="Actualizar">
        <% 
            
            try {
                
                double valor = Double.parseDouble(request.getParameter("precio"));
                out.write(String.valueOf(valor));
            }
            catch(Exception e){
                out.println("Ingresa un valor numerico");
            }
        %>
        </form>
    </body>
</html>
