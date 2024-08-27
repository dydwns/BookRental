package com.book.rental;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class App {
    public static void main(String[] args) {
        // MySQL 연결 정보
        String url = "jdbc:mysql://localhost:3306/fc";
        String user = "root";
        String password = "tiger";

        try {
            // MySQL 데이터베이스 연결
            Connection connection = DriverManager.getConnection(url, user, password);
            System.out.println("MySQL에 성공적으로 연결되었습니다.");

            // SQL 쿼리 실행
            String query = "SELECT * FROM member_tbl";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
         

            // 연결 해제
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
