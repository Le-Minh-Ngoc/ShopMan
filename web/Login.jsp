<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng nhập - ShopMan</title>
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
                display: flex;
                justify-content: center;
                align-items: center;
            }
            
            .login-container {
                background: white;
                padding: 40px;
                border: 2px solid #333;
                border-radius: 10px;
                box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
                width: 100%;
                max-width: 400px;
            }
            
            .login-header {
                text-align: center;
                margin-bottom: 30px;
            }
            
            .login-header h1 {
                color: #333;
                font-size: 28px;
                margin-bottom: 10px;
            }
            
            .login-header p {
                color: #666;
                font-size: 14px;
            }
            
            .form-group {
                margin-bottom: 20px;
            }
            
            .form-group label {
                display: block;
                color: #333;
                font-weight: 500;
                margin-bottom: 8px;
                font-size: 14px;
            }
            
            .form-group input {
                width: 100%;
                padding: 12px 15px;
                border: 2px solid #e0e0e0;
                border-radius: 5px;
                font-size: 14px;
                transition: border-color 0.3s;
            }
            
            .form-group input:focus {
                outline: none;
                border-color: #667eea;
            }
            
            .error-message {
                background: #fee;
                color: #c33;
                padding: 12px;
                border-radius: 5px;
                margin-bottom: 20px;
                font-size: 14px;
                border-left: 4px solid #c33;
            }
            
            .btn-login {
                width: 100%;
                padding: 12px;
                background: #8fb4e2;
                color: white;
                border: none;
                border-radius: 5px;
                font-size: 16px;
                font-weight: 600;
                cursor: pointer;
                transition: transform 0.2s;
            }
            
            .btn-login:hover {
                transform: translateY(-2px);
                box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
            }
            
            .register-link {
                text-align: center;
                margin-top: 20px;
                color: #666;
                font-size: 14px;
            }
            
            .register-link a {
                color: #667eea;
                text-decoration: none;
                font-weight: 600;
            }
            
            .register-link a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <div class="login-container">
            <div class="login-header">
                <h1>ShopMan</h1>
                <p>Đăng nhập vào hệ thống</p>
            </div>
            
            <% String error = (String) request.getAttribute("error");
               if (error != null) { %>
                <div class="error-message">
                    <%= error %>
                </div>
            <% } %>
            
            <form action="user?action=login" method="POST">
                <div class="form-group">
                    <label for="username">Tên đăng nhập</label>
                    <input type="text" id="username" name="username" required 
                           placeholder="Nhập tên đăng nhập">
                </div>
                
                <div class="form-group">
                    <label for="password">Mật khẩu</label>
                    <input type="password" id="password" name="password" required 
                           placeholder="Nhập mật khẩu">
                </div>
                
                <button type="submit" class="btn-login">Đăng nhập</button>
            </form>
            
            <div class="register-link">
                Chưa có tài khoản? <a href="${pageContext.request.contextPath}/Register.jsp">Đăng ký ngay</a>
            </div>
        </div>
    </body>
</html>
