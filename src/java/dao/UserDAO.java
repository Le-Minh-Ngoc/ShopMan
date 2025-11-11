package dao;

import java.sql.*;
import model.User;

public class UserDAO extends DAO {
    
    public UserDAO() {
        super();
    }
    
    public User login(String username, String password) {
        String sql = "SELECT * FROM User WHERE username=? AND password=?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setFullname(rs.getString("fullname"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getString("role"));
                user.setDob(rs.getDate("dob"));
                user.setAddress(rs.getString("address"));
                user.setTel(rs.getString("tel"));
                user.setEmail(rs.getString("email"));
                user.setNote(rs.getString("note"));
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public boolean checkUsernameExists(String username) {
        String sql = "SELECT id FROM User WHERE username=?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
