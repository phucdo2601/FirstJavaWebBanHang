/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package phucdn.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import phucdn.dao.CategoryDAO;
import phucdn.dao.ProductDAO;
import phucdn.dtos.CategoryDTO;
import phucdn.dtos.ProductDTO;

/**
 *
 * @author phucd
 */
@WebServlet(name = "UserCategoryAndProductController", urlPatterns = {"/UserCategoryAndProductController"})
public class UserCategoryAndProductController extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        try {
            //load category
            CategoryDAO cateDA0 = new CategoryDAO();
            List<CategoryDTO> listCategory = cateDA0.findCategoryByCateID("");
            request.setAttribute("listCategory", listCategory);
            
            //load new Product 
            ProductDAO proDAO = new ProductDAO();
            ProductDTO lastProduct = proDAO.getLastProduct();
            request.setAttribute("lastProduct", lastProduct);
            
            //load all product
//            List<ProductDTO> listProduct = proDAO.getAllProduct();
//            request.setAttribute("listProduct", listProduct);
            
            //load 3 san pham len trang jsp
            List<ProductDTO> listProduct = proDAO.getTopTenProduct();
            request.setAttribute("listProduct", listProduct);
            
            
            //load 3 new product on advertisement
            List<ProductDTO> listThreeNewProductOnAdv = proDAO.getTop3NewProduct();
            
            //doc cookie da luu len server
            request.setAttribute("listThreeNewProductOnAdv", listThreeNewProductOnAdv);
        } catch (Exception e) {
            log("Error at UserCategoryController: "+e.getMessage());
            e.printStackTrace();
        }
        finally{
            request.getRequestDispatcher("Home.jsp").forward(request, response);
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
