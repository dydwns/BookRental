package com.book.rental;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class App {
    public static void main(String[] args) {
        // MySQL ���� ����
        String url = "jdbc:mysql://localhost:3306/fc";
        String user = "root";
        String password = "tiger";

        try {
            // MySQL �����ͺ��̽� ����
            Connection connection = DriverManager.getConnection(url, user, password);
            System.out.println("MySQL�� ���������� ����Ǿ����ϴ�.");

            // SQL ���� ����
            String query = "SELECT * FROM member_tbl";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
         

            // ���� ����
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
