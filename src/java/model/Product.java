package model;

public class Product {
    private int id;
    private String name;
    private float price;
    private int stock;
    private String describe;

    public Product() {}

    public Product(int id, String name, float price, int stock, String describe) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.stock = stock;
        this.describe = describe;
    }

    // Getters & Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public float getPrice() { return price; }
    public void setPrice(float price) { this.price = price; }
    public int getStock() { return stock; }
    public void setStock(int stock) { this.stock = stock; }
    public String getDescribe() { return describe; }
    public void setDescribe(String describe) { this.describe = describe; }
}
