<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Product"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Detail - ShopMan</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background: #f5f5f5;
                min-height: 100vh;
            }
            
            .main-content {
                width: 100%;
                padding: 40px 20px;
            }
            
            .container {
                width: 100%;
                max-width: 800px;
                margin: 0 auto;
            }
            
            .page-title {
                text-align: center;
                font-size: 32px;
                font-weight: bold;
                color: #2c3e50;
                margin-bottom: 40px;
            }
            
            .product-card {
                background: white;
                border-radius: 15px;
                padding: 40px;
                box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
                margin-bottom: 30px;
            }
            
            .detail-table {
                width: 100%;
                border-collapse: separate;
                border-spacing: 0;
            }
            
            .detail-table tr {
                border-bottom: 1px solid #f0f0f0;
            }
            
            .detail-table tr:last-child {
                border-bottom: none;
            }
            
            .detail-table td {
                padding: 18px 20px;
            }
            
            .detail-table td:first-child {
                width: 200px;
                font-weight: 600;
                color: #667eea;
                font-size: 15px;
            }
            
            .detail-table td:last-child {
                color: #2c3e50;
                font-size: 16px;
            }
            
            .btn-back {
                padding: 12px 50px;
                background: linear-gradient(135deg, #95a5a6 0%, #7f8c8d 100%);
                border: none;
                cursor: pointer;
                font-size: 16px;
                font-weight: 600;
                color: white;
                border-radius: 10px;
                display: block;
                margin: 0 auto;
                transition: all 0.3s;
            }
            
            .btn-back:hover {
                transform: translateY(-2px);
                box-shadow: 0 4px 10px rgba(127, 140, 141, 0.3);
            }
            
            .no-product {
                text-align: center;
                color: #e74c3c;
                font-size: 18px;
                padding: 40px;
                background: #fff5f5;
                border-radius: 10px;
                border: 2px dashed #e74c3c;
            }
        </style>
    </head>
    <body>
        <jsp:include page="/Header.jsp">
            <jsp:param name="page" value="product-details" />
        </jsp:include>
        
        <div class="content-with-header">
            <div class="main-content">
                <div class="container">
            <h1 class="page-title">📦 Chi tiết sản phẩm</h1>
            
            <%
                Product product = (Product) request.getAttribute("product");
                if (product != null) {
            %>
            <div class="product-card">
                <table class="detail-table">
                    <tr>
                        <td>📝 Tên sản phẩm</td>
                        <td><%= product.getName() %></td>
                    </tr>
                    <tr>
                        <td>💰 Giá bán</td>
                        <td><%= String.format("%,d", (long)product.getPrice()) %> VND</span></td>
                    </tr>
                    <tr>
                        <td>📊 Tồn kho</td>
                        <td><%= product.getStock() %> sản phẩm</span></td>
                    </tr>
                    <tr>
                        <td>📄 Mô tả</td>
                        <td><%= product.getDescribe() != null && !product.getDescribe().isEmpty() ? product.getDescribe() : "Chưa có mô tả" %></td>
                    </tr>
                </table>
            </div>
            <%
                } else {
            %>
            <div class="no-product">
                ⚠️ Không tìm thấy thông tin sản phẩm
            </div>
            <%
                }
            %>
            
            <button onclick="history.back()" class="btn-back">← Quay lại</button>
                </div>
            </div>
        </div>
    </body>
</html>
