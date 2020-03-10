<%-- 
    Document   : consulta_prueba_clientes
    Created on : 31-oct-2016, 21:00:25
    Author     : chuch
--%>

<%@page import="control.MenuSucursal"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="../index.html">Inicio</a><br>
        <p>Selecciona un producto si deseas actualizar su precio.</p><br>
        <%
            MenuSucursal ms = new MenuSucursal();
            ArrayList productos = new ArrayList();
            
            ms.conecta();
            productos = ms.getMenuSucursales();
            ms.desconecta();
            HttpSession  sess = request.getSession();
            if (productos.size() > 0) {
                for (int i = 0; i < productos.size(); i++) {
                        int idSucursal = ((MenuSucursal) productos.get(i)).getIdSucursal();
                        int idProducto = ((MenuSucursal) productos.get(i)).getIdProducto();
                        String sucursal = ((MenuSucursal) productos.get(i)).getSucursal();
                        String producto = ((MenuSucursal) productos.get(i)).getProducto();
                        out.write(i + 1 + " | " + sucursal + " | " + "<a href=\"actualizar_producto.jsp\">" + producto + "</a>" + "</br>");
                }
            } else {
                out.write("No hay productos registrados en las sucursales");
            }
        %>
        
        
    </body>
</html>