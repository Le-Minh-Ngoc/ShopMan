<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Statistics - ShopMan</title>
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
                max-width: 1200px;
                margin: 0 auto;
            }
            
            .page-title {
                text-align: center;
                font-size: 32px;
                font-weight: bold;
                color: #2c3e50;
                margin-bottom: 15px;
            }
            
            .page-subtitle {
                text-align: center;
                font-size: 16px;
                color: #7f8c8d;
                margin-bottom: 30px;
            }
            
            .filter-form {
                display: flex;
                align-items: center;
                gap: 25px;
                margin-bottom: 30px;
                background: white;
                padding: 25px 40px;
                border-radius: 10px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
                justify-content: space-between;
                flex-wrap: wrap;
            }
            
            .filter-group {
                display: flex;
                align-items: center;
                gap: 12px;
            }
            
            .filter-form label {
                font-size: 15px;
                font-weight: 600;
                color: #2c3e50;
                white-space: nowrap;
            }
            
            .filter-form input[type="date"] {
                padding: 10px 15px;
                border: 2px solid #e0e0e0;
                font-size: 14px;
                width: 320px;
                border-radius: 8px;
                transition: all 0.3s;
            }
            
            .filter-form input[type="date"]:focus {
                outline: none;
                border-color: #3498db;
                box-shadow: 0 0 0 3px rgba(52, 152, 219, 0.1);
            }
            
            .btn-show {
                padding: 10px 40px;
                background: linear-gradient(135deg, #3498db 0%, #2980b9 100%);
                color: white;
                border: none;
                border-radius: 8px;
                font-size: 15px;
                font-weight: 600;
                cursor: pointer;
                transition: all 0.3s;
                box-shadow: 0 4px 10px rgba(52, 152, 219, 0.3);
            }
            
            .btn-show:hover {
                transform: translateY(-2px);
                box-shadow: 0 6px 15px rgba(52, 152, 219, 0.4);
            }
            
            .statistics-table {
                width: 100%;
                border-collapse: separate;
                border-spacing: 0;
                margin-bottom: 30px;
                background: white;
                border-radius: 10px;
                overflow: hidden;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
            }
            
            .statistics-table th,
            .statistics-table td {
                padding: 14px;
                text-align: center;
            }
            
            .statistics-table th {
                background: #f8f9fa;
                color: #2c3e50;
                font-weight: 600;
                font-size: 14px;
                border-bottom: 2px solid #dee2e6;
            }
            
            .statistics-table th:nth-child(6),
            .statistics-table td:nth-child(6) {
                width: 150px;
            }
            
            .statistics-table tbody tr {
                border-bottom: 1px solid #dee2e6;
                transition: all 0.3s;
            }
            
            .statistics-table tbody tr:hover {
                background: #f8f9fa;
            }
            
            .statistics-table tbody tr:last-child {
                border-bottom: none;
            }
            
            .statistics-table td:nth-child(2),
            .statistics-table td:nth-child(3),
            .statistics-table td:nth-child(4) {
                text-align: left;
            }
            
            .statistics-table td:nth-child(6) {
                text-align: right;
                color: #e74c3c;
                font-weight: 600;
            }
            
            .btn-view {
                padding: 6px 18px;
                background: linear-gradient(135deg, #3498db 0%, #2980b9 100%);
                border: none;
                color: white;
                cursor: pointer;
                border-radius: 6px;
                font-weight: 500;
                text-decoration: none;
                display: inline-block;
                transition: all 0.3s;
                font-size: 13px;
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
            <jsp:param name="page" value="customer-statistics" />
        </jsp:include>
        
        <div class="content-with-header">
            <div class="main-content">
                <div class="container">
                    <h1 class="page-title">👥 Thống kê khách hàng</h1>
                    <p class="page-subtitle">Xem doanh thu và lịch sử mua hàng của khách hàng</p>
                    
                    <form class="filter-form" method="GET" action="${pageContext.request.contextPath}/statistics">
                        <div class="filter-group">
                            <label>📅 Từ ngày</label>
                            <input type="date" name="startDate" value="<%= request.getAttribute("startDate") != null ? request.getAttribute("startDate") : "" %>">
                        </div>
                        
                        <div class="filter-group">
                            <label>📅 Đến ngày</label>
                            <input type="date" name="endDate" value="<%= request.getAttribute("endDate") != null ? request.getAttribute("endDate") : "" %>">
                        </div>
                        
                        <button type="submit" class="btn-show">🔍 Xem thống kê</button>
                    </form>
                    
                    <table class="statistics-table">
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>Mã KH</th>
                                <th>Họ tên</th>
                                <th>Địa chỉ</th>
                                <th>Số điện thoại</th>
                                <th>Doanh thu (VND)</th>
                                <th>Chi tiết</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                java.util.List<java.util.Map<String, Object>> listCustomer = 
                                    (java.util.List<java.util.Map<String, Object>>) request.getAttribute("listCustomer");
                                double totalRevenue = 0;
                                if (listCustomer != null && !listCustomer.isEmpty()) {
                                    int stt = 1;
                                    for (java.util.Map<String, Object> customer : listCustomer) {
                                        totalRevenue += ((Number) customer.get("totalRevenue")).doubleValue();
                            %>
                            <tr>
                                <td><%= stt++ %></td>
                                <td>KH<%= String.format("%03d", customer.get("id")) %></td>
                                <td><%= customer.get("fullname") %></td>
                                <td><%= customer.get("address") %></td>
                                <td><%= customer.get("tel") %></td>
                                <td><%= String.format("%,.0f", (Float) customer.get("totalRevenue")) %></td>
                                <td>
                                    <%
                                        String startDateParam = request.getAttribute("startDate") != null ? (String) request.getAttribute("startDate") : "";
                                        String endDateParam = request.getAttribute("endDate") != null ? (String) request.getAttribute("endDate") : "";
                                        String urlParams = "customerId=" + customer.get("id");
                                        if (!startDateParam.isEmpty()) {
                                            urlParams += "&startDate=" + startDateParam;
                                        }
                                        if (!endDateParam.isEmpty()) {
                                            urlParams += "&endDate=" + endDateParam;
                                        }
                                    %>
                                    <a class="btn-view" href="${pageContext.request.contextPath}/invoice?action=list&<%= urlParams %>">Xem</a>
                                </td>
                            </tr>
                            <%
                                    }
                            %>
                            <tr style="background: #f8f9fa; font-weight: 600; font-size: 16px; color: #e74c3c;">
                                <td colspan="5" style="text-align: right; padding: 16px 14px;">💰 Tổng doanh thu</td>
                                <td style="text-align: right;"><%= String.format("%,.0f", totalRevenue) %></td>
                                <td></td>
                            </tr>
                            <%
                                } else {
                            %>
                            <tr>
                                <td colspan="7" style="text-align: center;">Không có dữ liệu</td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                    
                    <button class="btn-back" onclick="window.location.href='${pageContext.request.contextPath}/Manager/SelectStatistics.jsp'">← Quay lại</button>
                </div>
            </div>
        </div>
    </body>
</html>
