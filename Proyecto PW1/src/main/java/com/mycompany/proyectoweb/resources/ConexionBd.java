package com.mycompany.proyectoweb.resources;


import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author chamoi
 */
public class ConexionBd {
    private static String url = "jdbc:mysql://localhost:3306/PIA_FINAL";    //aqui pones la base de datos, de q el puerto y el nombre asi como esta aca al lado
    private static String usuario = "root";                                 //usuario y contraseña, como te decia por mensaje root en los 2 para no perdernos
    private static String contrasena = "root";
    
//    private static Connection conexion;
//    private static PreparedStatement sentenciaPreparada;                  este codigo era pa calar unas cosillas si gustas lo dejas aqui si no lo quitas
//    private static ResultSet resultado;
    
    public static Connection conectar(){
        Connection conexion = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, contrasena);       //esto es pa conectarse usando las variables de arriba
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error: " + e);
        }
        
        return conexion;
    }
}