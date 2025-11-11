<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="model.Product"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Product - ShopMan</title>
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
                max-width: 1100px;
                margin: 0 auto;
            }
            
            .page-title {
                text-align: center;
                font-size: 32px;
                font-weight: bold;
                color: #2c3e50;
                margin-bottom: 15px;
            }
            
            .search-form {
                display: flex;
                gap: 15px;
                margin-bottom: 40px;
                align-items: center;
                max-width: 700px;
                margin-left: auto;
                margin-right: auto;
                background: white;
                padding: 25px;
                border-radius: 15px;
                box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            }
            
            .search-input {
                flex: 1;
                padding: 15px 20px;
                border: 2px solid #e0e0e0;
                font-size: 16px;
                border-radius: 10px;
                transition: all 0.3s;
            }
            
            .search-input:focus {
                outline: none;
                border-color: #667eea;
                box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
            }
            
            .btn-search {
                padding: 15px 35px;
                background: linear-gradient(135deg, #3498db 0%, #2980b9 100%);
                border: none;
                cursor: pointer;
                font-size: 16px;
                font-weight: 600;
                color: white;
                border-radius: 10px;
                transition: all 0.3s;
                box-shadow: 0 4px 10px rgba(52, 152, 219, 0.3);
            }
            
            .btn-search:hover {
                transform: translateY(-2px);
                box-shadow: 0 6px 15px rgba(52, 152, 219, 0.4);
            }
            
            .result-label {
                margin-bottom: 20px;
                font-size: 18px;
                font-weight: 600;
                color: #2c3e50;
                padding-left: 10px;
                border-left: 4px solid #667eea;
            }
            
            .product-table {
                width: 100%;
                border-collapse: separate;
                border-spacing: 0;
                margin-bottom: 30px;
                background: white;
                border-radius: 10px;
                overflow: hidden;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
            }
            
            .product-table th,
            .product-table td {
                padding: 16px;
                text-align: center;
            }
            
            .product-table th {
                background: #f8f9fa;
                color: #2c3e50;
                font-weight: 600;
                font-size: 15px;
                border-bottom: 2px solid #dee2e6;
            }
            
            .product-table tbody tr {
                border-bottom: 1px solid #dee2e6;
                transition: all 0.3s;
            }
            
            .product-table tbody tr:hover {
                background: #f8f9fa;
            }
            
            .product-table tbody tr:last-child {
                border-bottom: none;
            }
            
            .product-table td:nth-child(2) {
                text-align: left;
                font-weight: 500;
                color: #2c3e50;
                max-width: 400px;
            }
            
            .product-table td:nth-child(3) {
                color: #e74c3c;
                font-weight: 600;
                text-align: right;
                width: 120px;
            }
            
            .btn-view {
                padding: 8px 20px;
                background: linear-gradient(135deg, #3498db 0%, #2980b9 100%);
                border: none;
                color: white;
                cursor: pointer;
                border-radius: 6px;
                font-weight: 500;
                text-decoration: none;
                display: inline-block;
                transition: all 0.3s;
            }
            
            .btn-view:hover {
                transform: translateY(-2px);
                box-shadow: 0 4px 10px rgba(52, 152, 219, 0.3);
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
        </style>
    </head>
    <body>
        <jsp:include page="/Header.jsp">
            <jsp:param name="page" value="search-product" />
        </jsp:include>
        
        <div class="content-with-header">
            <div class="main-content">
                <div class="container">
            <h1 class="page-title">🔍 Tìm kiếm sản phẩm</h1>
            
            <form action="${pageContext.request.contextPath}/product" method="GET" class="search-form">
                <input type="hidden" name="action" value="search">
                <input type="text" name="name" class="search-input" 
                       placeholder="Nhập tên sản phẩm bạn muốn tìm..." 
                       value="<%= request.getParameter("name") != null ? request.getParameter("name") : "" %>">
                <button type="submit" class="btn-search">Tìm kiếm</button>
            </form>
            
            <div class="result-label">📦 Kết quả tìm kiếm</div>
            
            <table class="product-table">
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Tên mặt hàng</th>
                        <th>Giá tiền (VND)</th>
                        <th>Chi tiết</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Product> listProduct = (List<Product>) request.getAttribute("listProduct");
                        if (listProduct != null && !listProduct.isEmpty()) {
                            int stt = 1;
                            for (Product p : listProduct) {
                    %>
                    <tr>
                        <td><%= stt++ %></td>
                        <td><%= p.getName() %></td>
                        <td><%= String.format("%,.0f", p.getPrice()) %></td>
                        <td><a href="${pageContext.request.contextPath}/product?action=details&id=<%= p.getId() %>" class="btn-view">Xem</a></td>
                    </tr>
                    <%
                            }
                        } else {
                    %>
                    <tr>
                        <td colspan="4">Không tìm thấy sản phẩm nào</td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            
            <button onclick="window.location.href='${pageContext.request.contextPath}/Customer/CustomerHome.jsp'" class="btn-back">← Quay lại</button>
                </div>
            </div>
        </div>
    </body>
</html>
