package com.book.rental;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/customers")
public class CustomerList extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<MemberDto> memberDtoList = new ArrayList<>();
        String url = "jdbc:mysql://localhost:3306/fc";
        String username = "root";
        String password = "tiger";

        try (Connection conn = DriverManager.getConnection(url, username, password)) {
            String sql = "SELECT * FROM member_tbl";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                MemberDto customer = new MemberDto();
                customer.setCust_no(rs.getInt("cust_no"));  // 올바른 setter 사용
                customer.setCust_name(rs.getString("cust_name"));  // 올바른 setter 사용
                customer.setPhone(rs.getString("phone"));  // 올바른 setter 사용
                customer.setJoin_date(rs.getTimestamp("join_date"));  // 올바른 setter 사용
                customer.setCust_email(rs.getString("cust_email"));  // 올바른 setter 사용
                customer.setGrade(rs.getString("grade"));  // 올바른 setter 사용
                memberDtoList.add(customer);
            }

            rs.close();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("customers", memberDtoList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/customers.jsp");
        dispatcher.forward(request, response);
    }
}
