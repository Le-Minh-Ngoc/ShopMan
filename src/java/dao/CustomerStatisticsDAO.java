package dao;

import model.CustomerStatistics;
import java.sql.*;
import java.util.*;

public class CustomerStatisticsDAO extends DAO {
    
    public CustomerStatisticsDAO() {
        super();
    }
    
    public List<Map<String, Object>> getCustomerStatistics(java.sql.Date startDate, java.sql.Date endDate) {
        List<Map<String, Object>> list = new ArrayList<>();
        String sql = "SELECT u.id, u.fullname, u.address, u.tel, "
                   + "SUM(id.price * id.quantity) AS totalRevenue "
                   + "FROM Invoice i "
                   + "JOIN InvoiceDetails id ON i.id = id.Invoiceid "
                   + "JOIN Customer cu ON i.Customerid = cu.Userid "
                   + "JOIN User u ON cu.Userid = u.id "
                   + "WHERE i.date BETWEEN ? AND ? "
                   + "GROUP BY u.id, u.fullname, u.address, u.tel "
                   + "ORDER BY totalRevenue DESC";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setDate(1, startDate);
            ps.setDate(2, endDate);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Map<String, Object> customer = new HashMap<>();
                customer.put("id", rs.getInt("id"));
                customer.put("fullname", rs.getString("fullname"));
                customer.put("address", rs.getString("address"));
                customer.put("tel", rs.getString("tel"));
                customer.put("totalRevenue", rs.getFloat("totalRevenue"));
                list.add(customer);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
