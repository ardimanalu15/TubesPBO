/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package toko_buah;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ardi manalu
 */
public class Toko_Buah {
   
  private static Connection koneksi;
  public static Connection tokobuahDB()throws SQLException {
      try {
        String url; 
       String user; 
      String password ;
              url = "jdbc:mysql://localhost:3306/tokobuah";
    
              user = "root";
          
              password = "";
          
          DriverManager.registerDriver(new com.mysql.jdbc.Driver());
          koneksi = DriverManager.getConnection(url, user, password);
          
      }catch(SQLException e) {
          System.out.println(" koneksi ke database gagal " + e.getMessage());
      }
      return koneksi;
  }
}
