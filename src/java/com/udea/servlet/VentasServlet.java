/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.servlet;

import com.udea.ejb.VentasFacadeLocal;
import com.udea.entity.Clientes;
import com.udea.entity.Ventas;
import com.udea.entity.VentasPK;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author FABIAN
 */
public class VentasServlet extends HttpServlet {

    @EJB
    private VentasFacadeLocal ventasFacade;

     
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String action = request.getParameter("action");
            String url="index.jsp";
            if("list".equals(action)){
                List<Ventas> findAll = ventasFacade.findAll();
                request.getSession().setAttribute("ListaVentas",findAll);
                url="ListaVentas.jsp";
            }else if ("delete".equals(action)){
                String id=request.getParameter("id");
                Ventas a= ventasFacade.find(id);
                ventasFacade.remove(a);
                url="VentasServlet?action=list";
                System.out.println(id);
            }
            else if ("insert".equals(action)){
                VentasPK v = new VentasPK();
                Ventas a = new Ventas();
                v.setCedula(Integer.valueOf(request.getParameter("cedula")));
                v.setMatricula(request.getParameter("matricula"));
                a.setVentasPK(v);
                a.setPrecio(Integer.valueOf(request.getParameter("precio"))); 
                ventasFacade.create(a);
                url = "ListaVentas.jsp";
            }
            response.sendRedirect(url);
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
