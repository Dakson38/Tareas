package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author CJ
 */
@WebServlet(name = "MainServlet", urlPatterns = {"/MainServlet"})
public class MainServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String op = request.getParameter("op");

        HttpSession session = request.getSession();

        ArrayList<String> tareas = (ArrayList<String>) session.getAttribute("tareas");

        if (op.equals("nuevo")) {
            request.getRequestDispatcher("agregar.jsp").forward(request, response);
        }
        if (op.equals("eliminar")) {
            int id = Integer.parseInt(request.getParameter("id"));

            String completado = request.getParameter("completado");

            if (completado != null) {
                if (completado.equals("completado")) {
                    tareas.remove(id);
                }
            }

            response.sendRedirect("index.jsp");

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String tarea = request.getParameter("tarea");

        HttpSession session = request.getSession();

        ArrayList<String> tareas = (ArrayList<String>) session.getAttribute("tareas");

        tareas.add(tarea);

        response.sendRedirect("index.jsp");
    }
}
