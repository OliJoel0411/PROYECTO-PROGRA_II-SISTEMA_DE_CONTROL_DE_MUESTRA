/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import modelo.conexion.DataBaseConexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet que prueba la conexión a la base de datos.
 */
public class pruebaConexion extends HttpServlet {

    /**
     * Procesa las solicitudes HTTP GET y POST.
     *
     * @param request solicitud del servlet
     * @param response respuesta del servlet
     * @throws ServletException si ocurre un error específico del servlet
     * @throws IOException si ocurre un error de entrada/salida
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            // Encabezado de la página HTML
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Prueba de Conexión</title>");            
            out.println("</head>");
            out.println("<body>");
            
            // Prueba de conexión a la base de datos
            try (Connection conn = DataBaseConexion.getConnection()) {
                if (conn != null && !conn.isClosed()) {
                    out.println("<h1>Conexión a la base de datos establecida correctamente.</h1>");
                } else {
                    out.println("<h1>No se pudo establecer la conexión a la base de datos.</h1>");
                }
            } catch (SQLException e) {
                e.printStackTrace();
                out.println("<h1>Error al conectar a la base de datos: " + e.getMessage() + "</h1>");
            }
            
            // Cierre de la página HTML
            out.println("</body>");
            out.println("</html>");
        }
    }

    /**
     * Maneja el método HTTP GET.
     *
     * @param request solicitud del servlet
     * @param response respuesta del servlet
     * @throws ServletException si ocurre un error específico del servlet
     * @throws IOException si ocurre un error de entrada/salida
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Maneja el método HTTP POST.
     *
     * @param request solicitud del servlet
     * @param response respuesta del servlet
     * @throws ServletException si ocurre un error específico del servlet
     * @throws IOException si ocurre un error de entrada/salida
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Devuelve una breve descripción del servlet.
     *
     * @return una cadena con la descripción del servlet
     */
    @Override
    public String getServletInfo() {
        return "Servlet para probar la conexión a la base de datos.";
    }
}
