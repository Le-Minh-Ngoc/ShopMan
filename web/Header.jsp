<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String currentPage = request.getParameter("page");
    if (currentPage == null) currentPage = "";
    String userRole = (String) session.getAttribute("role");
    if (userRole == null) userRole = "Customer";
    // Staff bao gồm Manager, Sales, Delivery
    boolean isStaff = "Manager".equals(userRole);
%>

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    
    .header {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        background: #2c3e50;
        color: white;
        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        z-index: 1000;
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 0 30px;
        height: 70px;
    }
    
    .header-logo {
        font-size: 28px;
        font-weight: bold;
        color: #3498db;
        text-decoration: none;
        display: flex;
        align-items: center;
        gap: 10px;
    }
    
    .header-logo:hover {
        color: #5dade2;
    }
    
    .header-nav {
        display: flex;
        align-items: center;
        gap: 5px;
        flex: 1;
        justify-content: center;
    }
    
    .header-menu {
        list-style: none;
        display: flex;
        gap: 5px;
        margin: 0;
        padding: 0;
    }
    
    .header-menu li {
        margin: 0;
    }
    
    .header-menu a {
        display: block;
        padding: 12px 20px;
        color: #ecf0f1;
        text-decoration: none;
        transition: all 0.3s;
        border-radius: 5px;
        font-size: 15px;
        white-space: nowrap;
    }
    
    .header-menu a:hover {
        background: #34495e;
        color: #3498db;
    }
    
    .header-menu a.active {
        background: #34495e;
        color: #3498db;
        font-weight: bold;
    }
    
    .header-user {
        display: flex;
        align-items: center;
        gap: 15px;
    }
    
    .header-user-name {
        font-size: 14px;
        color: #3498db;
        font-weight: 500;
    }
    
    .header-logout {
        padding: 8px 20px;
        background: #e74c3c;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 14px;
        transition: background 0.3s;
        font-weight: 500;
    }
    
    .header-logout:hover {
        background: #c0392b;
    }
    
    .content-with-header {
        margin-top: 70px;
        min-height: calc(100vh - 70px);
        padding: 30px;
    }
    
    @media (max-width: 1024px) {
        .header {
            padding: 0 20px;
        }
        
        .header-menu a {
            padding: 10px 15px;
            font-size: 14px;
        }
    }
    
    @media (max-width: 768px) {
        .header {
            flex-wrap: wrap;
            height: auto;
            padding: 15px;
        }
        
        .header-logo {
            font-size: 24px;
        }
        
        .header-nav {
            width: 100%;
            order: 3;
            margin-top: 10px;
            justify-content: flex-start;
            overflow-x: auto;
        }
        
        .header-menu {
            flex-wrap: nowrap;
        }
        
        .header-menu a {
            padding: 8px 12px;
            font-size: 13px;
        }
        
        .content-with-header {
            margin-top: 130px;
            padding: 20px;
        }
    }
</style>

<header class="header">
    <a href="${pageContext.request.contextPath}/" class="header-logo">
        🛒 ShopMan
    </a>
    
    <div class="header-user">
        <div class="header-user-name">
            <% 
                String userName = (String) session.getAttribute("fullname");
                if (userName == null) userName = "User";
            %>
            👤 <%= userName %>
        </div>
        <button class="header-logout" onclick="window.location.href='${pageContext.request.contextPath}/user?action=logout'">
            Đăng xuất
        </button>
    </div>
</header>
