<%-- 
    Document   : confirmacion
    Created on : 3 jun. 2025, 5:03:59 p. m.
    Author     : User
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String nombre = (String) request.getAttribute("nombre");
    String producto = (String) request.getAttribute("producto");
    int cantidad = (int) request.getAttribute("cantidad");
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Confirmación</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #4facfe, #00f2fe);
            font-family: 'Segoe UI', sans-serif;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .card {
            background-color: #ffffffee;
            border-radius: 20px;
            padding: 30px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
            max-width: 450px;
        }

        h2 {
            color: #198754;
            font-weight: bold;
        }

        .btn-outline-primary {
            border-radius: 8px;
            padding: 10px 20px;
        }

        .btn-outline-primary:hover {
            background-color: #198754;
            color: white;
        }
    </style>
</head>
<body>
    <div class="card text-center">
        <h2>¡Pedido realizado con éxito!</h2>
        <p><strong>Nombre:</strong> <%= nombre %></p>
        <p><strong>Producto:</strong> <%= producto %></p>
        <p><strong>Cantidad:</strong> <%= cantidad %></p>
        <a href="index.jsp" class="btn btn-outline-primary mt-4">Volver al inicio</a>
    </div>
</body>
</html>



