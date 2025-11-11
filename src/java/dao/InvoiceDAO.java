package dao;

import model.*;
import java.sql.*;
import java.util.*;

public class InvoiceDAO extends DAO {
    
    public InvoiceDAO() {
        super();
    }
    
    public List<Invoice> getInvoiceOfCustomer(int customerId, java.sql.Date startDate, java.sql.Date endDate) {
        List<Invoice> list = new ArrayList<>();
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT i.*, u.fullname as customer_name, ")
           .append("COALESCE(SUM(id.price * id.quantity), 0) as total ")
           .append("FROM Invoice i ")
           .append("LEFT JOIN InvoiceDetails id ON i.id = id.Invoiceid ")
           .append("LEFT JOIN Customer c ON i.Customerid = c.Userid ")
           .append("LEFT JOIN User u ON c.Userid = u.id ")
           .append("WHERE i.Customerid = ? ");
        
        // Thêm điều kiện lọc theo ngày nếu có
        if (startDate != null) {
            sql.append("AND i.date >= ? ");
        }
        if (endDate != null) {
            sql.append("AND i.date <= ? ");
        }
        
        sql.append("GROUP BY i.id, i.date, i.Customerid, u.fullname ")
           .append("ORDER BY i.date DESC");
        
        try {
            PreparedStatement ps = con.prepareStatement(sql.toString());
            int paramIndex = 1;
            ps.setInt(paramIndex++, customerId);    
            
            if (startDate != null) {
                ps.setDate(paramIndex++, startDate);
            }
            if (endDate != null) {
                ps.setDate(paramIndex++, endDate);
            }
            
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Invoice invoice = new Invoice();
                invoice.setId(rs.getInt("id"));
                invoice.setDate(rs.getDate("date"));
                invoice.setTotal(rs.getFloat("total"));
                invoice.setStatus(rs.getString("status"));
                
                Customer cus = new Customer();
                cus.setId(customerId);
                cus.setFullname(rs.getString("customer_name"));
                invoice.setCus(cus);
                
                list.add(invoice);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public Invoice getInvoiceDetails(int invoiceId) {
        String sql = "SELECT i.*, cu.fullname as customer_name, su.fullname as sales_name, du.fullname as delivery_name, "
                   + "COALESCE(SUM(id.price * id.quantity), 0) as total "
                   + "FROM Invoice i "
                   + "LEFT JOIN InvoiceDetails id ON i.id = id.Invoiceid "
                   + "LEFT JOIN Customer c ON i.Customerid = c.Userid "
                   + "LEFT JOIN User cu ON c.Userid = cu.id "
                   + "LEFT JOIN Sales sa ON i.Salesid = sa.Staffid "
                   + "LEFT JOIN User su ON sa.Staffid = su.id "
                   + "LEFT JOIN Delivery de ON i.Deliveryid = de.Staffid "
                   + "LEFT JOIN User du ON de.Staffid = du.id "
                   + "WHERE i.id = ? "
                   + "GROUP BY i.id, i.date, i.status, i.Customerid, i.Salesid, i.Deliveryid, cu.fullname, su.fullname, du.fullname";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, invoiceId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Invoice invoice = new Invoice();
                invoice.setId(rs.getInt("id"));
                invoice.setDate(rs.getDate("date"));
                invoice.setTotal(rs.getFloat("total"));
                invoice.setStatus(rs.getString("status"));
                
                Customer cus = new Customer();
                cus.setId(rs.getInt("Customerid"));
                cus.setFullname(rs.getString("customer_name"));
                invoice.setCus(cus);
                
                if (rs.getInt("Salesid") != 0) {
                    Sales sales = new Sales();
                    sales.setId(rs.getInt("Salesid"));
                    sales.setFullname(rs.getString("sales_name"));
                    invoice.setSales(sales);
                }
                
                if (rs.getInt("Deliveryid") != 0) {
                    Delivery delivery = new Delivery();
                    delivery.setId(rs.getInt("Deliveryid"));
                    delivery.setFullname(rs.getString("delivery_name"));
                    invoice.setDel(delivery);
                }
                
                // Get invoice details list
                List<InvoiceDetails> detailsList = new ArrayList<>();
                String detailsSql = "SELECT idt.price, idt.quantity, p.name AS product_name "
                               + "FROM InvoiceDetails idt JOIN Product p ON idt.Productid = p.id "
                               + "WHERE idt.Invoiceid = ?";
                try {
                    PreparedStatement psDetails = con.prepareStatement(detailsSql);
                    psDetails.setInt(1, invoiceId);
                    ResultSet rsDetails = psDetails.executeQuery();
                    while (rsDetails.next()) {
                        InvoiceDetails detail = new InvoiceDetails();
                        float price = rsDetails.getFloat("price");
                        int quantity = rsDetails.getInt("quantity");
                        detail.setPrice(price);
                        detail.setQuantity(quantity);
                        detail.setTotal(price * quantity);
                        detail.setProductName(rsDetails.getString("product_name"));
                        detailsList.add(detail);
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                invoice.setListInvoice(detailsList);
                
                return invoice;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
