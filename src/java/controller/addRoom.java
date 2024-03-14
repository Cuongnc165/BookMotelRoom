/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAO;
import dal.MotelDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Account;
import model.Motel;
import model.Owner;
import model.Renter;
import model.Room;
import model.imgRoom;

/**
 *
 * @author MM
 */
public class addRoom extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet addRoom</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addRoom at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("Account");
        MotelDAO md  = new MotelDAO();
        Owner o = md.getOwnerById(a.getId());
        Motel m = md.getMotelByOwnerId(o.getOwner_id());
        request.setAttribute("motel", m);
        List<Room> list = md.getAllRoomByMotel(m.getMotel_id());
        request.setAttribute("rNum", list);
        request.getRequestDispatcher("AddRoom.jsp").forward(request, response);
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
        String img1 = null,img2 = null,img3 = null,img4 = null,img5 = null;
        if(!request.getParameter("img1").isEmpty()){
            img1 = "./assets/img/" + request.getParameter("img1");
        }
        if(!request.getParameter("img2").isEmpty()){
            img2 = "./assets/img/" + request.getParameter("img2");
        }
        if(!request.getParameter("img3").isEmpty()){
            img3 = "./assets/img/" + request.getParameter("img3");
        }
        if(!request.getParameter("img4").isEmpty()){
            img4 = "./assets/img/" + request.getParameter("img4");
        }
        if(!request.getParameter("img5").isEmpty()){
            img5 = "./assets/img/" + request.getParameter("img5");
        }
        int r_num = Integer.parseInt(request.getParameter("r_num"));
        double r_price = Double.parseDouble(request.getParameter("r_price"));
        String r_describe = request.getParameter("r_describe");
        int r_max = Integer.parseInt(request.getParameter("max"));
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("Account");
        MotelDAO md  = new MotelDAO();
        Owner o = md.getOwnerById(a.getId());
        Renter r = md.getRenterByAccId(a.getId());
        Motel m = md.getMotelByOwnerId(o.getOwner_id());
        Room room = new Room(0, r_num, r_price, r_describe, m, r, r_max, 0);
        DAO d = new DAO();
        d.insertRoom(room);
        Room roomImg = md.getRoomByMoterlIdAndNum(m.getMotel_id(), r_num);
        imgRoom iR = new imgRoom(roomImg, img1, img2, img3, img4, img5);
        d.insertImg(iR);
        List<Room> list = md.getAllRoomByMotel(m.getMotel_id());
        request.setAttribute("rNum", list);
        request.getRequestDispatcher("AddRoom.jsp").forward(request, response);
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
