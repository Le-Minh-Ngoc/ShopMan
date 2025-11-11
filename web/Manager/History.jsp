<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer's History - ShopMan</title>
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
            
            .page-subtitle {
                text-align: center;
                font-size: 16px;
                color: #7f8c8d;
                margin-bottom: 30px;
            }
            
            .customer-info {
                background: white;
                padding: 25px 100px;
                border-radius: 10px;
                margin-bottom: 30px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                grid-template-rows: repeat(2, auto);
                grid-auto-flow: column;
                gap: 15px 80px;
            }
            
            .customer-info p {
                font-size: 16px;
                margin: 0;
                color: #2c3e50;
            }
            
            .customer-info strong {
                font-weight: 600;
                color: #667eea;
                margin-right: 8px;
            }
            
            .customer-info .name {
                color: #e74c3c;
                font-weight: 600;
            }
            
            .history-table {
                width: 100%;
                border-collapse: separate;
                border-spacing: 0;
                margin-bottom: 30px;
                background: white;
                border-radius: 10px;
                overflow: hidden;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
            }
            
            .history-table th,
            .history-table td {
                padding: 14px;
                text-align: center;
            }
            
            .history-table th {
                background: #f8f9fa;
                color: #2c3e50;
                font-weight: 600;
                font-size: 14px;
                border-bottom: 2px solid #dee2e6;
            }
            
            .history-table th:nth-child(4),
            .history-table td:nth-child(4) {
                width: 150px;
            }
            
            .history-table tbody tr {
                border-bottom: 1px solid #dee2e6;
                transition: all 0.3s;
            }
            
            .history-table tbody tr:hover {
                background: #f8f9fa;
            }
            
            .history-table tbody tr:last-child {
                border-bottom: none;
            }
            
            .history-table td:nth-child(4) {
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
            <jsp:param name="page" value="history" />
        </jsp:include>
        
        <div class="content-with-header">
            <div class="main-content">
                <div class="container">
                    <h1 class="page-title">📋 Lịch sử mua hàng</h1>
                    <p class="page-subtitle">Xem chi tiết các đơn hàng của khách hàng</p>
                    
                    <div class="customer-info">
                        <%
                            java.util.List<model.Invoice> listInvoiceHeader = 
                                (java.util.List<model.Invoice>) request.getAttribute("listInvoice");
                            String maKH = request.getParameter("customerId");
                            String tenKH = null;
                            String startDate = request.getParameter("startDate");
                            String endDate = request.getParameter("endDate");
                            if (listInvoiceHeader != null && !listInvoiceHeader.isEmpty()) {
                                model.Invoice inv0 = listInvoiceHeader.get(0);
                                if (inv0.getCus() != null) {
                                    maKH = String.valueOf(inv0.getCus().getId());
                                    tenKH = inv0.getCus().getFullname();
                                }
                            }
                        %>
                        <p><strong>👤 Mã KH:</strong> KH<%= maKH != null ? String.format("%03d", Integer.parseInt(maKH)) : "---" %></p>
                        <p><strong>📝 Họ tên:</strong> <%= tenKH != null ? tenKH : "" %></span></p>
                        <p><strong>📅 Từ ngày:</strong> <%= startDate != null && !startDate.isEmpty() ? new java.text.SimpleDateFormat("dd/MM/yyyy").format(new java.text.SimpleDateFormat("yyyy-MM-dd").parse(startDate)) : "Không giới hạn" %></p>
                        <p><strong>📅 Đến ngày:</strong> <%= endDate != null && !endDate.isEmpty() ? new java.text.SimpleDateFormat("dd/MM/yyyy").format(new java.text.SimpleDateFormat("yyyy-MM-dd").parse(endDate)) : "Không giới hạn" %></p>
                    </div>
                    
                    <table class="history-table">
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>Mã HĐ</th>
                                <th>Ngày đặt</th>
                                <th>Tổng tiền (VND)</th>
                                <th>Chi tiết</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                java.util.List<model.Invoice> listInvoice = 
                                    (java.util.List<model.Invoice>) request.getAttribute("listInvoice");
                                float sum = 0;
                                if (listInvoice != null && !listInvoice.isEmpty()) {
                                    int stt = 1;
                                    for (model.Invoice inv : listInvoice) {
                                        sum += inv.getTotal();
                            %>
                            <tr>
                                <td><%= stt++ %></td>
                                <td>HD<%= String.format("%03d", inv.getId()) %></td>
                                <td><%= new java.text.SimpleDateFormat("dd/MM/yyyy").format(inv.getDate()) %></td>
                                <td><%= String.format("%,.0f", inv.getTotal()) %></td>
                                <td>
                                    <a class="btn-view" href="${pageContext.request.contextPath}/invoice?action=details&invoiceId=<%= inv.getId() %>">Xem</a>
                                </td>
                            </tr>
                            <%
                                    }
                            %>
                            <tr style="background: #f8f9fa; font-weight: 600; font-size: 16px; color: #e74c3c;">
                                <td colspan="3" style="text-align: right; padding: 16px 14px;">💰 Tổng cộng</td>
                                <td style="text-align: right;"><%= String.format("%,.0f", sum) %></td>
                                <td></td>
                            </tr>
                            <%
                                } else {
                            %>
                            <tr>
                                <td colspan="5" style="text-align:center;color:#999;">Chưa có dữ liệu</td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                    
                    <button class="btn-back" onclick="history.back()">← Quay lại</button>
                </div>
            </div>
        </div>
    </body>
</html>
