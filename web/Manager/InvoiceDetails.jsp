<%-- 
    Document   : InvoiceDetails
    Created on : Oct 28, 2025, 7:53:18 AM
    Author     : Minh Ngọc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Invoice Details - ShopMan</title>
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
                max-width: 1000px;
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
            
            .invoice-info {
                background: white;
                padding: 25px 80px;
                border-radius: 10px;
                margin-bottom: 30px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                grid-template-rows: repeat(3, auto);
                gap: 15px 60px;
                grid-auto-flow: column;
            }
            
            .invoice-info p {
                font-size: 16px;
                margin: 0;
                color: #2c3e50;
            }
            
            .invoice-info strong {
                font-weight: 600;
                color: #667eea;
                margin-right: 8px;
            }
            
            .invoice-info .value {
                color: #2c3e50;
            }
            
            .invoice-info .name {
                color: #e74c3c;
                font-weight: 600;
            }
            
            .details-table {
                width: 100%;
                border-collapse: separate;
                border-spacing: 0;
                margin-bottom: 30px;
                background: white;
                border-radius: 10px;
                overflow: hidden;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
            }
            
            .details-table th,
            .details-table td {
                padding: 14px;
                text-align: center;
            }
            
            .details-table th {
                background: #f8f9fa;
                color: #2c3e50;
                font-weight: 600;
                font-size: 14px;
                border-bottom: 2px solid #dee2e6;
            }
            
            .details-table tbody tr {
                border-bottom: 1px solid #dee2e6;
                transition: all 0.3s;
            }
            
            .details-table tbody tr:hover {
                background: #f8f9fa;
            }
            
            .details-table tbody tr:last-child {
                border-bottom: none;
            }
            
            .details-table td:nth-child(3),
            .details-table td:nth-child(5) {
                text-align: right;
                font-weight: 600;
            }
            
            .details-table .total-row {
                background: #f8f9fa;
            }
            
            .details-table .total-row td {
                font-weight: 600;
                font-size: 16px;
                color: #e74c3c;
                padding: 16px 14px;
            }
            
            .details-table .total-row td:last-child {
                text-align: right;
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
            <jsp:param name="page" value="invoice-details" />
        </jsp:include>
        
        <div class="content-with-header">
            <div class="main-content">
                <div class="container">
                    <h1 class="page-title">📄 Chi tiết hóa đơn</h1>
                    <p class="page-subtitle">Thông tin chi tiết về đơn hàng</p>
                    <%
                        model.Invoice invoice = (model.Invoice) request.getAttribute("invoice");
                    %>
                    <div class="invoice-info">
                        <p><strong>📋 Mã HĐ:</strong> HD<%= invoice != null ? String.format("%03d", invoice.getId()) : "---" %></p>
                        <p><strong>👤 Tên KH:</strong> <%= invoice != null && invoice.getCus()!=null ? invoice.getCus().getFullname() : "" %></span></p>
                        <p><strong>📅 Ngày đặt:</strong> <%= invoice != null && invoice.getDate()!=null ? new java.text.SimpleDateFormat("dd/MM/yyyy").format(invoice.getDate()) : "" %></p>
                        <p><strong>📦 Trạng thái:</strong> <%= invoice != null ? invoice.getStatus() : "" %></p>
                        <p><strong>👨‍💼 NV duyệt:</strong> <%= invoice != null && invoice.getSales()!=null ? invoice.getSales().getFullname() : "" %></p>
                        <p><strong>🚚 NV giao hàng:</strong> <%= invoice != null && invoice.getDel()!=null ? invoice.getDel().getFullname() : "" %></p>
                    </div>
                    
                    <table class="details-table">
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>Sản phẩm</th>
                                <th>Giá tiền (VND)</th>
                                <th>Số lượng</th>
                                <th>Tổng (VND)</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                float sum = 0;
                                if (invoice != null && invoice.getListInvoice() != null && !invoice.getListInvoice().isEmpty()) {
                                    int stt = 1;
                                    for (model.InvoiceDetails d : invoice.getListInvoice()) {
                                        sum += d.getTotal();
                            %>
                            <tr>
                                <td><%= stt++ %></td>
                                <td><%= d.getProductName() != null ? d.getProductName() : "" %></td>
                                <td><%= String.format("%,.0f", d.getPrice()) %></td>
                                <td><%= d.getQuantity() %></td>
                                <td><%= String.format("%,.0f", d.getTotal()) %></td>
                            </tr>
                            <%
                                    }
                                } else {
                            %>
                            <tr>
                                <td colspan="5" style="text-align:center;color:#999;">Chưa có dữ liệu</td>
                            </tr>
                            <%
                                }
                            %>
                            <tr class="total-row">
                                <td colspan="4">💰 Tổng cộng</td>
                                <td><%= String.format("%,.0f", sum) %></td>
                            </tr>
                        </tbody>
                    </table>
                    
                    <button class="btn-back" onclick="history.back()">← Quay lại</button>
                </div>
            </div>
        </div>
    </body>
</html>
