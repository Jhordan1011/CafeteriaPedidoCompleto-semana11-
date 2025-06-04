/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;
import java.sql.*;

public class Pedidos {

    public boolean guardarPedido(String cliente, String producto, int cantidad) {
        boolean guardado = false;

        String url = "jdbc:mysql://localhost:3306/cafeteria?useSSL=false";
        String usuario = "root";
        String clave = "contreras10"; // contraseña

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, usuario, clave);

            String sql = "INSERT INTO pedidos (cliente, producto, cantidad) VALUES (?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, cliente);
            stmt.setString(2, producto);
            stmt.setInt(3, cantidad);

            int filas = stmt.executeUpdate();
            guardado = filas > 0;

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

        return guardado;
    }
}

