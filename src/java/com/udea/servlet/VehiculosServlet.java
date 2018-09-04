/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.servlet;

import com.udea.ejb.VehiculosFacadeLocal;
import com.udea.entity.Vehiculos;
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
public class VehiculosServlet extends HttpServlet {

    @EJB
    private VehiculosFacadeLocal vehiculosFacade;

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
                List<Vehiculos> findAll = vehiculosFacade.findAll();
                request.getSession().setAttribute("vehiculos",findAll);
                url="vehiculos.jsp";
            }else if ("delete".equals(action)){
                String id=request.getParameter("id");
                Vehiculos a= vehiculosFacade.find(id);
                vehiculosFacade.remove(a);
                url="VehiculosServlet?action=list";                
            }
            else if("insert".equals(action)){
                Vehiculos a = new Vehiculos();             
                a.setMatricula(request.getParameter("matricula"));
                a.setMarca(request.getParameter("marca"));
                a.setModelo(request.getParameter("modelo"));
                a.setPrecio(Integer.valueOf(request.getParameter("precio")));
                a.setCantidad(1);
                a.setImagen("placeholder");
                vehiculosFacade.create(a);
                url = "vehiculos.jsp";        
            }
            else if("search".equals(action)){
                String u=request.getParameter("matricula");
                boolean buscar = vehiculosFacade.buscar(u);
                if (buscar)
                {
                    request.getSession().setAttribute("matricula", u);
                    url="ResultadoBuscar.jsp";
                }        
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
