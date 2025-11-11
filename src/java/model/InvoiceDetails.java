package model;

public class InvoiceDetails {
    private float price;
    private int quantity;
    private float total;
    private String productName;
    
    public InvoiceDetails() {}
    
    public InvoiceDetails(float price, int quantity, float total) {
        this.price = price;
        this.quantity = quantity;
        this.total = total;
    }
    
    public float getPrice() {
        return price;
    }
    
    public void setPrice(float price) {
        this.price = price;
    }
    
    public int getQuantity() {
        return quantity;
    }
    
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    public float getTotal() {
        return total;
    }
    
    public void setTotal(float total) {
        this.total = total;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }
}
