package model;

import java.sql.Date;

public class User {
    private int id;
    private String fullname;
    private String username;
    private String password;
    private String role;
    private Date dob;
    private String address;
    private String tel;
    private String email;
    private String note;
    
    public User() {}
    
    public User(int id, String fullname, String username, String password, String role, 
                Date dob, String address, String tel, String email, String note) {
        this.id = id;
        this.fullname = fullname;
        this.username = username;
        this.password = password;
        this.role = role;
        this.dob = dob;
        this.address = address;
        this.tel = tel;
        this.email = email;
        this.note = note;
    }
    
    // Getters & Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    
    public String getFullname() { return fullname; }
    public void setFullname(String fullname) { this.fullname = fullname; }
    
    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }
    
    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
    
    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }
    
    public Date getDob() { return dob; }
    public void setDob(Date dob) { this.dob = dob; }
    
    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }
    
    public String getTel() { return tel; }
    public void setTel(String tel) { this.tel = tel; }
    
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    
    public String getNote() { return note; }
    public void setNote(String note) { this.note = note; }
}
