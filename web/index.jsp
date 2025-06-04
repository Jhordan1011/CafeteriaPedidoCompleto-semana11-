<%-- 
    Document   : index
    Created on : 29 abr. 2025, 5:24:58 p. m.
    Author     : User
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Realizar Pedido</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #f8b500, #ec6f66);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .card {
            background-color: #ffffffdd;
            border-radius: 20px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
            padding: 30px;
            max-width: 450px;
            width: 100%;
        }

        h2 {
            font-weight: 600;
            color: #333;
        }

        .btn-primary {
            background-color: #ff6600;
            border: none;
        }

        .btn-primary:hover {
            background-color: #e65500;
        }
    </style>
</head>
<body>
    <div class="card">
        <form action="PedidoControlador" method="post">
            <h2 class="text-center mb-4">Formulario de Pedido</h2>
            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre del cliente</label>
                <input type="text" class="form-control" id="nombre" name="nombre" required>
            </div>
            <div class="mb-3">
                <label for="producto" class="form-label">Producto</label>
                <select class="form-select" id="producto" name="producto">
                    <option value="Café">Café</option>
                    <option value="Capuchino">Capuchino</option>
                    <option value="Latte">Latte</option>
                    <option value="Té Verde">Té Verde</option>
                    <option value="Chocolate Caliente">Chocolate Caliente</option>
                    <option value="Jugo Natural">Jugo Natural</option>
                    <option value="Croissant">Croissant</option>
                    <option value="Sandwich">Sándwich</option>
                    <option value="Ensalada">Ensalada</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="cantidad" class="form-label">Cantidad</label>
                <input type="number" class="form-control" id="cantidad" name="cantidad" required>
            </div>
            <button type="submit" class="btn btn-primary w-100">Realizar pedido</button>
        </form>
    </div>
</body>
</html>




