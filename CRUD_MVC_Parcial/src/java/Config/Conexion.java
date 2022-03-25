/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Config;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author USUARIO
 */
public class Conexion {
     Connection con;
    
     public Conexion(){
         try {
             Class.forName("com.mysql.cj.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestionmvc?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","mintic");
         } catch (Exception e) {
             System.out.println("Error" + e);
         }
     }
     
     public Connection getConnection(){
         return con;
     }
     
   /*
    public Conexion() {
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            con = DriverManager.getConnection("jdbc:derby://localhost:1527/gestion", "umb", "umb2020");
        } catch (Exception e) {
            System.err.print("error: " + e);
        }
    }
    
    public Connection getConnection(){
        return con;
    }
  */
     
}
