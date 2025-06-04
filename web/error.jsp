<%-- 
    Document   : error
    Created on : 3 jun. 2025, 5:04:21 p. m.
    Author     : User
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Error</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #ff758c, #ff7eb3);
            font-family: 'Segoe UI', sans-serif;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .card {
            background-color: #ffffffdd;
            border-radius: 20px;
            padding: 30px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
            max-width: 450px;
        }

        h2 {
            color: #dc3545;
            font-weight: bold;
        }

        .btn-outline-danger {
            border-radius: 8px;
            padding: 10px 20px;
        }

        .btn-outline-danger:hover {
            background-color: #dc3545;
            color: white;
        }
    </style>
</head>
<body>
    <div class="card text-center">
        <h2>Ocurrió un error</h2>
        <p>No se pudo realizar el pedido. Inténtalo de nuevo.</p>
        <a href="index.jsp" class="btn btn-outline-danger mt-4">Volver al inicio</a>
    </div>
</body>
</html>


