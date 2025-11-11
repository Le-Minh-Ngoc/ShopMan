package servlet;

import dao.ProductDAO;
import model.Product;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class ProductServlet extends HttpServlet {
    private ProductDAO productDAO = new ProductDAO();

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {

        String action = req.getParameter("action");
        if (action == null) action = "search";

        switch (action) {
            case "details":
                int id = Integer.parseInt(req.getParameter("id"));
                Product product = productDAO.getProductInfo(id);
                req.setAttribute("product", product);
                req.getRequestDispatcher("Customer/ProductDetails.jsp").forward(req, resp);
                break;

            case "search":
            default:
                String name = req.getParameter("name");
                List<Product> list = productDAO.searchProduct(name == null ? "" : name);
                req.setAttribute("listProduct", list);
                req.getRequestDispatcher("Customer/SearchProduct.jsp").forward(req, resp);
                break;
        }
    }
}
