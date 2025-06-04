/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import modelo.Pedidos;

@WebServlet("/PedidoControlador")
public class PedidoControlador extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        String producto = request.getParameter("producto");
        int cantidad = Integer.parseInt(request.getParameter("cantidad"));

        Pedidos modelo = new Pedidos();
        boolean exito = modelo.guardarPedido(nombre, producto, cantidad);

        if (exito) {
            request.setAttribute("nombre", nombre);
            request.setAttribute("producto", producto);
            request.setAttribute("cantidad", cantidad);
            RequestDispatcher dispatcher = request.getRequestDispatcher("confirmacion.jsp");
            dispatcher.forward(request, response);
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}

