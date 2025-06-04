<%-- 
    Document   : realizarPedido
    Created on : 29 abr. 2025, 5:25:59 p. m.
    Author     : User
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%
    String nombre = request.getParameter("nombre");
    String producto = request.getParameter("producto");
    int cantidad = Integer.parseInt(request.getParameter("cantidad"));

    String url = "jdbc:mysql://localhost:3306/cafeteria?useSSL=false&characterEncoding=UTF-8";
    String usuario = "root";
    String clave = "contreras10";

    Connection conn = null;
    PreparedStatement stmt = null;

    boolean pedidoRealizado = false;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, usuario, clave);

        String sql = "INSERT INTO pedidos (cliente, producto, cantidad) VALUES (?, ?, ?)";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, nombre);
        stmt.setString(2, producto);
        stmt.setInt(3, cantidad);

        int filas = stmt.executeUpdate();
        pedidoRealizado = filas > 0;

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Resumen del Pedido</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
    <div class="form-container">
        <div>
            <% if (pedidoRealizado) { %>
                <h2>Pedido realizado con éxito</h2>
                <p><strong>Nombre:</strong> <%= nombre %></p>
                <p><strong>Producto:</strong> <%= producto %></p>
                <p><strong>Cantidad:</strong> <%= cantidad %></p>
                <p>¡Gracias por tu pedido!</p>
            <% } else { %>
                <h2>Error al realizar el pedido.</h2>
                <p>Por favor, intenta nuevamente.</p>
            <% } %>
            <a href="index.jsp">Volver al inicio</a>
        </div>
    </div>
</body>
</html>
