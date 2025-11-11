package dao;

import model.CustomerStatistics;
import java.sql.*;
import java.util.*;

public class CustomerStatisticsDAO extends DAO {
    
    public CustomerStatisticsDAO() {
        super();
    }
    
    public List<CustomerStatistics> getCustomerStatistics(java.sql.Date startDate, java.sql.Date endDate) {
        List<CustomerStatistics> list = new ArrayList<>();
        String sql = "SELECT u.id, u.fullname, u.username, u.password, u.role, u.dob, u.address, u.tel, u.email, u.note, "
                   + "SUM(id.price * id.quantity) AS totalRevenue "
                   + "FROM Invoice i "
                   + "JOIN InvoiceDetails id ON i.id = id.Invoiceid "
                   + "JOIN Customer cu ON i.Customerid = cu.Userid "
                   + "JOIN User u ON cu.Userid = u.id "
                   + "WHERE i.date BETWEEN ? AND ? "
                   + "GROUP BY u.id, u.fullname, u.username, u.password, u.role, u.dob, u.address, u.tel, u.email, u.note "
                   + "ORDER BY totalRevenue DESC";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setDate(1, startDate);
            ps.setDate(2, endDate);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                CustomerStatistics customer = new CustomerStatistics(
                    rs.getInt("id"),
                    rs.getString("fullname"),
                    rs.getString("username"),
                    rs.getString("password"),
                    rs.getString("role"),
                    rs.getDate("dob"),
                    rs.getString("address"),
                    rs.getString("tel"),
                    rs.getString("email"),
                    rs.getString("note"),
                    rs.getFloat("totalRevenue")
                );
                list.add(customer);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
