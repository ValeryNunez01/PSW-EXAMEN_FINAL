/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author valery nuñez
 */
public class Conexion {
    public static Connection getConnection(){
    
        String url, password, username;
        
        url = "jdbc:mysql://localhost/examen_dos";
        username = "root";
        password = "ohman123";
        
        Connection con = null;
        
        try{
            
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url,username, password);
            System.out.println("Conexión exitosa con la BD");
            
        }catch(Exception e){
            System.out.println("Error al conectar con la BD");
            System.out.println(e.getMessage()); 
        }   
        
        return con;
        
    }
}
