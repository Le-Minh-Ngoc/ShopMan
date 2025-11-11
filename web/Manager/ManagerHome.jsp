<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager Home - ShopMan</title>
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
        </style>
    </head>
    <body>
        <jsp:include page="/Header.jsp">
            <jsp:param name="page" value="manager-home" />
        </jsp:include>
        
        <div class="content-with-header">
            <div class="main-content">
                <div class="container">
                    <h1 class="page-title">🏠 Trang chủ Quản lý</h1>
                    <p class="page-subtitle">Chào mừng bạn đến với hệ thống quản lý ShopMan</p>
                    
                    <h2 style="text-align: center; color: #2c3e50; margin-bottom: 5px; margin-top: 10px; font-size: 20px; font-weight: 600;">⚡ Chức năng chính</h2>
                    
                    <div class="menu-container">
                        <button class="menu-button" onclick="window.location.href='${pageContext.request.contextPath}/Manager/SelectStatistics.jsp'">
                            📊 Xem thống kê
                        </button>
                        <button class="menu-button" onclick="window.location.href='${pageContext.request.contextPath}/Manager/ImportProduct.jsp'">
                            📦 Nhập hàng hóa
                        </button>
                        <button class="menu-button" onclick="window.location.href='${pageContext.request.contextPath}/Manager/ManageProduct.jsp'">
                            🛍️ Quản lý mặt hàng
                        </button>
                        <button class="menu-button" onclick="window.location.href='${pageContext.request.contextPath}/Manager/ManageSupplier.jsp'">
                            🏢 Quản lý nhà cung cấp
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
