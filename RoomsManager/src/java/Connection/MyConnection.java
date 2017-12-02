/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author SONNLHSE62414
 */
public class MyConnection {

    public static Connection getMyConnection() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=RoomManager", "sa", "admin@123");
            return conn;
        } catch (ClassNotFoundException | SQLException e) {
        }
        return null;
    }
}
