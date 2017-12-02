/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Connection.MyConnection;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author SONNLHSE62414
 */
public class UserDAO implements Serializable {

    Connection conn = null;
    PreparedStatement stm = null;
    ResultSet rs = null;

    public boolean checkLogin(String username, String password) throws SQLException {
        try {
            conn = MyConnection.getMyConnection();
            String sql = "Select * from Users Where name = ? and pass = ?";
            stm = conn.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            rs = stm.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
        } finally {
            closeConnection();
        }
        return false;
    }

    public boolean registerUser(String username, String password) {
        try {
            conn = MyConnection.getMyConnection();
            if(conn != null){
            String sql = "Insert into Users(name, pass) Values(?,?)";
            stm = conn.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
                System.out.println(sql);
            int row = stm.executeUpdate();
            if (row > 0) {
                return true;
            }}
        } catch (SQLException se) {
        }
        return false;
    }

    public void closeConnection() throws SQLException {
        if (rs != null) {
            rs.close();
        }
        if (stm != null) {
            stm.close();
        }
        if (conn != null) {
            conn.close();
        }
    }
}
