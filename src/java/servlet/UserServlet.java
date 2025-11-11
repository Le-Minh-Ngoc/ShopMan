package servlet;

import dao.UserDAO;
import model.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class UserServlet extends HttpServlet {
    private UserDAO userDAO = new UserDAO();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        
        String action = req.getParameter("action");
        
        if ("login".equals(action)) {
            handleLogin(req, resp);
        } else if ("logout".equals(action)) {
            handleLogout(req, resp);
        } else {
            resp.sendRedirect(req.getContextPath() + "/Login.jsp");
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        
        String action = req.getParameter("action");
        
        if ("logout".equals(action)) {
            handleLogout(req, resp);
        } else {
            resp.sendRedirect("Login.jsp");
        }
    }
    
    private void handleLogin(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        
        User user = userDAO.login(username, password);
        
        if (user != null) {
            // Đăng nhập thành công
            HttpSession session = req.getSession();
            session.setAttribute("user", user);
            session.setAttribute("fullname", user.getFullname());
            session.setAttribute("role", user.getRole());
            
            // Chuyển hướng theo role
            String role = user.getRole();
            if ("Manager".equals(role) || "Sales".equals(role) || "Delivery".equals(role)) {
                // Manager, Sales, Delivery đều vào ManagerHome
                resp.sendRedirect(req.getContextPath() + "/Manager/ManagerHome.jsp");
            } else {
                // Customer và các role khác
                resp.sendRedirect(req.getContextPath() + "/Customer/CustomerHome.jsp");
            }
        } else {
            // Đăng nhập thất bại
            req.setAttribute("error", "Tên đăng nhập hoặc mật khẩu không đúng!");
            req.getRequestDispatcher("Login.jsp").forward(req, resp);
        }
    }
    
    private void handleLogout(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        
        // Hủy session
        HttpSession session = req.getSession(false);
        if (session != null) {
            session.invalidate();
        }
        
        // Chuyển về trang login
        resp.sendRedirect(req.getContextPath() + "/Login.jsp");
    }
}
