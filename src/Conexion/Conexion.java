/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author USER
 */
public class Conexion {
    private String db = "punto_de_ventas";
    private String user = "root";
    private String password = "";
    private String urlMysql =  "jdbc:mysql://localhost/" + db + "?SslMode=none";
    //private String urlSql = "jdbc:sqlserver://localhost:1433;databaseName=" + db + ";integratedSecurity=true;"; 
    private Connection conn = null;
    
    public Conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(this.urlMysql, this.user, this.password);
            if (conn != null){
                System.out.println("Conexión a la base de datos " + this.db + "... Listo");
            }
        } catch (ClassNotFoundException | SQLException ex) {
            //Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Error : " + ex);
        }
    }

    public Connection getConn() {
        return conn;
    }
    
    
}
