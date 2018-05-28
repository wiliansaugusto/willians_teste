package com.mycompany.br.com.sitecorridas;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Banco {
    


      static String BD_URL = "jdbc:mysql://sitecorrida.chrfp0fmkrik.sa-east-1.rds.amazonaws.com:3306/sitecorrida";
      static String user ="willians";
      static String pswd = "785412Wiza";

    public Connection getConnection() throws ClassNotFoundException {            
    try {      
            Class.forName("com.mysql.jdbc.Driver");

            return DriverManager.getConnection(BD_URL, user,pswd);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        }

    

  
}
       
   

