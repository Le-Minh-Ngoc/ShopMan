package servlet;

import dao.CustomerStatisticsDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.*;
import model.CustomerStatistics;

public class CustomerStatisticsServlet extends HttpServlet {
    private CustomerStatisticsDAO dao = new CustomerStatisticsDAO();
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String start = req.getParameter("startDate");
        String end = req.getParameter("endDate");
        
        if (start != null && !start.isEmpty() && end != null && !end.isEmpty()) {
            java.sql.Date startDate = java.sql.Date.valueOf(start);
            java.sql.Date endDate = java.sql.Date.valueOf(end);
            
            List<CustomerStatistics> list = dao.getCustomerStatistics(startDate, endDate);
            
            req.setAttribute("listCustomer", list);
            req.setAttribute("startDate", start);
            req.setAttribute("endDate", end);
        }
        
        req.getRequestDispatcher("/Manager/CustomerStatistics.jsp").forward(req, resp);
    }
}
