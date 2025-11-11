<%-- 
    Document   : SelectStatistics
    Created on : Oct 28, 2025, 7:52:42 AM
    Author     : Minh Ngọc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Statistics - ShopMan</title>
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
                max-width: 900px;
                margin: 0 auto;
            }
            
            .page-title {
                text-align: center;
                font-size: 32px;
                font-weight: bold;
                color: #2c3e50;
                margin-bottom: 10px;
                margin-top: 10px;
            }
            
            .page-subtitle {
                text-align: center;
                font-size: 16px;
                color: #7f8c8d;
                margin-bottom: 30px;
            }
            
            .menu-container {
                display: flex;
                flex-direction: column;
                gap: 15px;
                align-items: center;
                margin-top: 30px;
            }
            
            .menu-button {
                width: 100%;
                max-width: 500px;
                padding: 22px 30px;
                background: linear-gradient(135deg, #3498db 0%, #2980b9 100%);
                border: none;
                border-radius: 10px;
                text-align: center;
                font-size: 18px;
                font-weight: 600;
                color: white;
                text-decoration: none;
                display: flex;
                align-items: center;
                justify-content: center;
                gap: 12px;
                transition: all 0.3s;
                box-shadow: 0 4px 10px rgba(52, 152, 219, 0.3);
                cursor: pointer;
            }
            
            .menu-button:hover {
                transform: translateY(-2px);
                box-shadow: 0 6px 15px rgba(52, 152, 219, 0.4);
            }
            
            .menu-button::before {
                content: '→';
                font-size: 20px;
                font-weight: bold;
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
                margin: 30px auto 0;
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
            <jsp:param name="page" value="statistics" />
        </jsp:include>
        
        <div class="content-with-header">
            <div class="main-content">
                <div class="container">
                    <h1 class="page-title">📊 Xem thống kê</h1>
                    <p class="page-subtitle">Chọn loại thống kê bạn muốn xem</p>
                    
                    <div class="menu-container">
                        <button class="menu-button" onclick="window.location.href='${pageContext.request.contextPath}/Manager/ImportStatistics.jsp'">
                            📦 Thống kê sản phẩm
                        </button>
                        <button class="menu-button" onclick="window.location.href='${pageContext.request.contextPath}/statistics'">
                            👥 Thống kê khách hàng
                        </button>
                        <button class="menu-button" onclick="window.location.href='${pageContext.request.contextPath}/Manager/SupplierStatistics.jsp'">
                            🏭 Thống kê nhà cung cấp
                        </button>
                    </div>
                    
                    <button onclick="window.location.href='${pageContext.request.contextPath}/Manager/ManagerHome.jsp'" class="btn-back">← Quay lại</button>
                </div>
            </div>
        </div>
    </body>
</html>
