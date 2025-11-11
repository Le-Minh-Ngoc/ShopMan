package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DAO {
    public static Connection con;
    
    public DAO(){
        if(con == null){
            String dbUrl = "jdbc:mysql://localhost:3306/ShopMan?autoReconnect=true&useSSL=false";
            String dbClass = "com.mysql.cj.jdbc.Driver";
            String username = "root";
            String password = "123456";
            
            try {
                Class.forName(dbClass);
                con = DriverManager.getConnection(dbUrl, username, password);
                System.out.println("Database connected successfully!");
            } catch(Exception e) {
                System.err.println("Database connection failed!");
                e.printStackTrace();
            }
        }
    }
}
