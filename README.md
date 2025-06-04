# CafeteriaPedido

## Descripción
Aplicación web en JSP/Servlet para la realización de pedidos en una cafetería. Permite al usuario ingresar su nombre, seleccionar un producto y la cantidad. Los datos se almacenan en una base de datos MySQL y se muestran pantallas de confirmación o error según el resultado.

---

## Requisitos previos
- **JDK 17** 
- **NetBeans IDE 12.x** o superior
- **GlassFish Server 7** (u otro contenedor compatible con Jakarta EE 9+)
- **MySQL Server**
- **MySQL Connector/J** 
- Configurar `JAVA_HOME` y asegurarse de que GlassFish y MySQL estén en camino de instalación.

---

## Configuración de la base de datos
1. Iniciar MySQL Server.
2. Ejecutar en MySQL Workbench o consola:
   ```sql
CREATE DATABASE cafeteria;

USE cafeteria;

CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente VARCHAR(100),
    producto VARCHAR(50),
    cantidad INT
);

