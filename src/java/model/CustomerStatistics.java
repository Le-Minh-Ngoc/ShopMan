package model;

import java.sql.Date;

public class CustomerStatistics extends Customer {
    private float totalRevenue;
    
    public CustomerStatistics() {
        super();
    }
    
    public CustomerStatistics(float totalRevenue) {
        super();
        this.totalRevenue = totalRevenue;
    }
    
    public CustomerStatistics(int id, String fullname, String username, String password, String role, 
                             Date dob, String address, String tel, String email, String note, float totalRevenue) {
        super();
        this.setId(id);
        this.setFullname(fullname);
        this.setUsername(username);
        this.setPassword(password);
        this.setRole(role);
        this.setDob(dob);
        this.setAddress(address);
        this.setTel(tel);
        this.setEmail(email);
        this.setNote(note);
        this.totalRevenue = totalRevenue;
    }
    
    public float getTotalRevenue() {
        return totalRevenue;
    }
    
    public void setTotalRevenue(float totalRevenue) {
        this.totalRevenue = totalRevenue;
    }
}
