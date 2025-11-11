package model;

public class CustomerStatistics {
    private float totalRevenue;
    
    public CustomerStatistics() {}
    
    public CustomerStatistics(float totalRevenue) {
        this.totalRevenue = totalRevenue;
    }
    
    public float getTotalRevenue() {
        return totalRevenue;
    }
    
    public void setTotalRevenue(float totalRevenue) {
        this.totalRevenue = totalRevenue;
    }
}
