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
                // Xử lý chi tiết hóa đơn
                String invoiceIdStr = req.getParameter("invoiceId");
                if (invoiceIdStr != null && !invoiceIdStr.isEmpty()) {
                    int invoiceId = Integer.parseInt(invoiceIdStr);
                    Invoice invoice = invoiceDAO.getInvoiceDetails(invoiceId);
                    req.setAttribute("invoice", invoice);
                    req.getRequestDispatcher("/Manager/InvoiceDetails.jsp").forward(req, resp);
                } else {
                    resp.sendRedirect(req.getContextPath() + "/Manager/History.jsp");
                }
                break;
                
            case "list":
            default:
                // Xử lý danh sách hóa đơn
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
                    try {
                        if (startDateStr != null && !startDateStr.isEmpty()) {
                            startDate = new Date(sdf.parse(startDateStr).getTime());
                        }
                        if (endDateStr != null && !endDateStr.isEmpty()) {
                            endDate = new Date(sdf.parse(endDateStr).getTime());
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    
                    // Gọi DAO với tham số ngày tháng
                    List<Invoice> list = invoiceDAO.getInvoiceOfCustomer(customerId, startDate, endDate);
                    req.setAttribute("listInvoice", list);
                    req.getRequestDispatcher("/Manager/History.jsp").forward(req, resp);
                } else {
                    resp.sendRedirect(req.getContextPath() + "/Manager/CustomerStatistics.jsp");
                }
                break;
        }
    }
}
