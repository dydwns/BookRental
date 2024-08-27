package com.book.rental;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/check")
public class CoustomerList extends HttpServlet {
	 protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {

	        // MySQL 연결 정보
	        String url = "jdbc:mysql://localhost:3306/fc";  // 실제 데이터베이스 이름
	        String user = "root";  // 실제 MySQL 사용자 이름
	        String password = "tiger";  // 실제 MySQL 비밀번호

	        response.setContentType("text/html; charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        
	        out.println("<!DOCTYPE html>");
	        out.println("<html lang='ko'>");
	        out.println("<head>");
	        out.println("<meta charset='UTF-8'>");
	        out.println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
	        out.println("<title>Employee List</title>");
	        out.println("<style>");
	        out.println("table { width: 100%; border-collapse: collapse; }");
	        out.println("th, td { padding: 8px 12px; border: 1px solid #ddd; text-align: left; }");
	        out.println("th { background-color: #f4f4f4; }");
	        out.println("</style>");
	        out.println("</head>");
	        out.println("<body>");
	        out.println("<h2>Employee List</h2>");
	        out.println("<table>");
	        out.println("<tr><th>ID</th><th>Name</th><th>Department</th></tr>");

	        try {
	            // MySQL 데이터베이스 연결
	            Connection connection = DriverManager.getConnection(url, user, password);

	            // SQL 쿼리 실행
	            String query = "SELECT * FROM employees";
	            Statement statement = connection.createStatement();
	            ResultSet resultSet = statement.executeQuery(query);

	            // 결과 출력
	            while (resultSet.next()) {
	                out.println("<tr>");
	                out.println("<td>" + resultSet.getInt("id") + "</td>");
	                out.println("<td>" + resultSet.getString("name") + "</td>");
	                out.println("<td>" + resultSet.getString("department") + "</td>");
	                out.println("</tr>");
	            }

	            // 연결 해제
	            resultSet.close();
	            statement.close();
	            connection.close();
	        } catch (Exception e) {
	            e.printStackTrace(out);
	        }

	        out.println("</table>");
	        out.println("</body>");
	        out.println("</html>");
	    }
	}

