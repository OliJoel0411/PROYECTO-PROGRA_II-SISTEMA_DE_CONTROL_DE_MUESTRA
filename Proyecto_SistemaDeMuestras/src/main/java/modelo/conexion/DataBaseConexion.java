/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.conexion;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DataBaseConexion {
    private static Connection connection = null;

    public static Connection getConnection() throws SQLException {
        if (connection == null) {
            try (InputStream input = DataBaseConexion.class.getClassLoader().getResourceAsStream("db.properties")) {
                if (input == null) {
                    throw new SQLException("No se encontró el archivo db.properties");
                }

                Properties properties = new Properties();
                properties.load(input);

                String driver = properties.getProperty("jdbc.driver");
                String url = properties.getProperty("jdbc.url");
                String user = properties.getProperty("jdbc.user");
                String password = properties.getProperty("jdbc.password");

                // Cargar el driver de MySQL
                Class.forName(driver);

                // Establecer la conexión
                connection = DriverManager.getConnection(url, user, password);
            } catch (Exception e) {
                throw new SQLException("Error al conectar a la base de datos", e);
            }
        }
        return connection;
    }
}
