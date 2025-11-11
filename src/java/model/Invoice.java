package model;

import java.util.Date;
import java.util.List;

public class Invoice {
    private int id;
    private Date date;
    private float total;
    private String status;
    private Customer cus;
    private Sales sales;
    private Delivery del;
    private List<InvoiceDetails> listInvoice;
    
    public Invoice() {}
    
    public Invoice(int id, Date date, float total, String status, Customer cus, Sales sales, Delivery del) {
        this.id = id;
        this.date = date;
        this.total = total;
        this.status = status;
        this.cus = cus;
        this.sales = sales;
        this.del = del;
    }
    
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    
    public Date getDate() {
        return date;
    }
    
    public void setDate(Date date) {
        this.date = date;
    }
    
    public float getTotal() {
        return total;
    }
    
    public void setTotal(float total) {
        this.total = total;
    }
    
    public String getStatus() {
        return status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }
    
    public Customer getCus() {
        return cus;
    }
    
    public void setCus(Customer cus) {
        this.cus = cus;
    }
    
    public Sales getSales() {
        return sales;
    }
    
    public void setSales(Sales sales) {
        this.sales = sales;
    }
    
    public Delivery getDel() {
        return del;
    }
    
    public void setDel(Delivery del) {
        this.del = del;
    }
    
    public List<InvoiceDetails> getListInvoice() {
        return listInvoice;
    }
    
    public void setListInvoice(List<InvoiceDetails> listInvoice) {
        this.listInvoice = listInvoice;
    }
}
