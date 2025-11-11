<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Home - ShopMan</title>
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
                font-size: 36px;
                font-weight: bold;
                color: #2c3e50;
                margin-bottom: 15px;
                margin-top: 20px;
            }
            
            .page-subtitle {
                text-align: center;
                font-size: 16px;
                color: #7f8c8d;
                margin-bottom: 50px;
            }
            
            .welcome-section {
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                color: white;
                padding: 30px;
                border-radius: 10px;
                margin-bottom: 30px;
                text-align: center;
            }
            
            .welcome-section h2 {
                font-size: 24px;
                margin-bottom: 10px;
            }
            
            .welcome-section p {
                font-size: 14px;
                opacity: 0.9;
            }
            
            .features-grid {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
                gap: 20px;
                margin-bottom: 30px;
            }
            
            .feature-card {
                background: #f8f9fa;
                padding: 25px;
                border-radius: 8px;
                text-align: center;
                transition: transform 0.3s, box-shadow 0.3s;
            }
            
            .feature-card:hover {
                transform: translateY(-5px);
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            }
            
            .feature-icon {
                font-size: 40px;
                margin-bottom: 15px;
            }
            
            .feature-title {
                font-size: 18px;
                font-weight: bold;
                color: #2c3e50;
                margin-bottom: 10px;
            }
            
            .feature-desc {
                font-size: 14px;
                color: #7f8c8d;
                line-height: 1.5;
            }
            
            .menu-container {
                display: flex;
                flex-direction: column;
                gap: 20px;
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
                gap: 10px;
                transition: all 0.3s;
                box-shadow: 0 4px 10px rgba(52, 152, 219, 0.3);
            }
            
            .menu-button:hover {
                transform: translateY(-2px);
                box-shadow: 0 6px 15px rgba(52, 152, 219, 0.4);
                cursor: pointer;
            }
            
            .menu-button::before {
                content: '→';
                font-size: 20px;
                font-weight: bold;
            }
            
            .stats-section {
                display: grid;
                grid-template-columns: repeat(3, 1fr);
                gap: 15px;
                margin-top: 30px;
                padding-top: 30px;
                border-top: 2px solid #ecf0f1;
            }
            
            .stat-item {
                text-align: center;
            }
            
            .stat-number {
                font-size: 28px;
                font-weight: bold;
                color: #667eea;
                margin-bottom: 5px;
            }
            
            .stat-label {
                font-size: 13px;
                color: #7f8c8d;
            }
            
            @media (max-width: 768px) {
                .features-grid {
                    grid-template-columns: 1fr;
                }
                
                .stats-section {
                    grid-template-columns: 1fr;
                    gap: 10px;
                }
            }
        </style>
    </head>
    <body>
        <jsp:include page="/Header.jsp">
            <jsp:param name="page" value="customer-home" />
        </jsp:include>
        
        <div class="content-with-header">
            <div class="main-content">
                <div class="container">
                    <h1 class="page-title">🏠 Trang chủ khách hàng</h1>
                    <p class="page-subtitle">Chào mừng bạn đến với ShopMan - Nơi mua sắm trực tuyến tin cậy</p>
                    
                    <h2 style="text-align: center; color: #2c3e50; margin-bottom: 10px; margin-top: 20px; font-size: 22px; font-weight: 600;">⚡ Chức năng chính</h2>
                    
                    <div class="menu-container">
                        <button onclick="window.location.href='${pageContext.request.contextPath}/Customer/SearchProduct.jsp'" class="menu-button">
                            🔍 Tìm kiếm sản phẩm
                        </button>
                        <button onclick="window.location.href='${pageContext.request.contextPath}/order?action=create'" class="menu-button">
                            🛒 Đặt hàng trực tuyến
                        </button>
                        <button onclick="window.location.href='${pageContext.request.contextPath}/order?action=tracking'" class="menu-button">
                            📍 Theo dõi đơn hàng
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
