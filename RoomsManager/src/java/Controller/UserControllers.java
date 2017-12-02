/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SONNLHSE62414
 */
@WebServlet(name = "UserControllers", urlPatterns = {"/UserControllers"})
public class UserControllers extends HttpServlet {

    private final String AdminPage = "index.jsp";
    private final String LoginPage = "login.jsp";
    private final String RegisterPage = "view/register.jsp";

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
        try (PrintWriter out = response.getWriter()) {
            String action = request.getParameter("action");
            MD5Library MD5 = new MD5Library();
            UserDAO dao = new UserDAO();

            if (action.equals("Login")) {
                System.out.println("Login");
                String name = request.getParameter("username");
                String pass = request.getParameter("password");

                String passMD5 = MD5Library.md5(pass);
                if (dao.checkLogin(name, passMD5)) {
                    request.getRequestDispatcher(AdminPage).forward(request, response);
                } else {
                    request.setAttribute("LoginFail", "Username or Password is wrong");
                    request.getRequestDispatcher(LoginPage).forward(request, response);
                }
            }

            if (action.equals("Register")) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                String confirm = request.getParameter("confirm");
                if (!confirm.equals(password)) {
                    request.getRequestDispatcher(RegisterPage).forward(request, response);
                    request.setAttribute("RegisterFail", "Confirm not match");
                } else {
                    String passMD5 = MD5Library.md5(password);
                    boolean check = dao.registerUser(username, passMD5);
                    System.out.println(check);
                    if (!check) {
                        request.getRequestDispatcher(RegisterPage).forward(request, response);
                        request.setAttribute("RegisterFail", "Register Fail");
                    } else {
                        response.sendRedirect(LoginPage);
                    }
                }
            }
        } catch (Exception e) {

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
