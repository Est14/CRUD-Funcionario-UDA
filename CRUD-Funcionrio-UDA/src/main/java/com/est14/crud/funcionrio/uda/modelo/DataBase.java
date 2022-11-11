/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.est14.crud.funcionrio.uda.modelo;

/**
 *
 * @author luisesteban.martinez
 */
public class DataBase {
    
    String url;
    String user;
    String password;
    String driver;

    public DataBase() {
        this.url = "jdbc:mysql://localhost:3306/funcionarios_iudigital";
        this.user = "root";
        this.password = "Uri14!";
        this.driver = "com.mysql.jdbc.Driver";
    }

    public String getUrl() {
        return url;
    }

    public String getUser() {
        return user;
    }

    public String getPassword() {
        return password;
    }

    public String getDriver() {
        return driver;
    }
    
}
