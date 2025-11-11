package servlet;

import dao.InvoiceDAO;
import model.Invoice;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

public class InvoiceServlet extends HttpServlet {
    private InvoiceDAO invoiceDAO = new InvoiceDAO();
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
        String action = req.getParameter("action");
        if (action == null) action = "list";
        
        switch (action) {
            case "details":
                handleInvoiceDetails(req, resp);
                break;
            case "list":
            default:
                handleInvoiceList(req, resp);
                break;
        }
    }
    
    private void handleInvoiceList(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            String customerIdStr = req.getParameter("customerId");
            if (customerIdStr != null && !customerIdStr.isEmpty()) {
                int customerId = Integer.parseInt(customerIdStr);
                
                // Lấy tham số startDate và endDate từ request
                String startDateStr = req.getParameter("startDate");
                String endDateStr = req.getParameter("endDate");
                
                Date startDate = null;
                Date endDate = null;
                
                // Chuyển đổi String sang java.sql.Date
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                if (startDateStr != null && !startDateStr.isEmpty()) {
                    startDate = new Date(sdf.parse(startDateStr).getTime());
                }
                if (endDateStr != null && !endDateStr.isEmpty()) {
                    endDate = new Date(sdf.parse(endDateStr).getTime());
                }
                
                // Gọi DAO với tham số ngày tháng
                List<Invoice> list = invoiceDAO.getInvoiceOfCustomer(customerId, startDate, endDate);
                req.setAttribute("listInvoice", list);
                req.getRequestDispatcher("/Manager/History.jsp").forward(req, resp);
            } else {
                resp.sendRedirect(req.getContextPath() + "/Manager/CustomerStatistics.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
    
    private void handleInvoiceDetails(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            String invoiceIdStr = req.getParameter("invoiceId");
            if (invoiceIdStr != null && !invoiceIdStr.isEmpty()) {
                int invoiceId = Integer.parseInt(invoiceIdStr);
                Invoice invoice = invoiceDAO.getInvoiceDetails(invoiceId);
                req.setAttribute("invoice", invoice);
                req.getRequestDispatcher("/Manager/InvoiceDetails.jsp").forward(req, resp);
            } else {
                resp.sendRedirect(req.getContextPath() + "/Manager/History.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
}
