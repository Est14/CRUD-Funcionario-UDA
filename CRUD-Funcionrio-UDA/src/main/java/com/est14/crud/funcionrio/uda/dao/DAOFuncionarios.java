/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.est14.crud.funcionrio.uda.dao;

import com.est14.crud.funcionrio.uda.modelo.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author luisesteban.martinez
 */

public class DAOFuncionarios implements Operaciones{

    DataBase db = new DataBase();
    
    @Override
    public boolean insertar(Funcionario func) {
        Connection con;
        PreparedStatement pst;
        String sql = "INSERT INTO funcionarios" +
                "(tipo_id, numero_id, nombre, apellido, estado_civil, telefono,"
                + "fecha_nacimineto, dirreccion, email, sexo)"
                + " VALUES(?,?,?,?,?,?,?,?,?,?)";
        
        try{
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(
                    db.getUrl(),
                    db.getUser(),
                    db.getPassword()
            );
            pst = con.prepareStatement(sql);
            pst.setString(1, func.getTipoId());
            pst.setString(2, func.getNumeroId());
            pst.setString(3, func.getNombre());
            pst.setString(4, func.getApellido());
            pst.setString(5, func.getEstadoCivil());
            pst.setString(6, func.getTelefono());
            pst.setDate(7, (Date) func.getFechaNacimiento());
            pst.setString(8, func.getDirreccion());
            pst.setString(9, func.getEmail());
            pst.setString(10, func.getSexo());
            int filas = pst.executeUpdate();
            if(filas> 0){
                con.close();
                return true;
            }else{
                con.close();
                return false;
            }
           
        }catch (SQLException | ClassNotFoundException e){
            JOptionPane.showMessageDialog(null, 
                    "ERROR --> " + e.getMessage());
            return false;
        }
    }

    @Override
    public boolean eliminar(String id) {
      
        Connection con;
        PreparedStatement pst;
        String sql = "DELETE FROM funcionarios WHERE numero_id=?";
        
        try{
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(
                    db.getUrl(),
                    db.getUser(),
                    db.getPassword()
            );
            pst = con.prepareStatement(sql);
            pst.setString(1, id);
            int filas = pst.executeUpdate();
            
            if(filas> 0){
                con.close();
                return true;
            }else{
                con.close();
                return false;
            }
           
        }catch (SQLException | ClassNotFoundException e){
            JOptionPane.showMessageDialog(null, 
                    "ERROR --> " + e.getMessage());
            return false;
        }
     
    }

    @Override
    public boolean modificar(Funcionario func) {
       Connection con;
        PreparedStatement pst;
        String sql = "UPDATE funcionarios "
                + "SET tipo_id=?, numero_id=?, nombre=?, apellido=?,"
                + "estado_civil=?, telefono=?, fecha_nacimineto=?, dirreccion=?,"
                + "email=?, sexo=? WHERE id_funcionarios=?";
        
        try{
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(
                    db.getUrl(),
                    db.getUser(),
                    db.getPassword()
            );
            pst = con.prepareStatement(sql);
            pst.setString(1, func.getTipoId());
            pst.setString(2, func.getNumeroId());
            pst.setString(3, func.getNombre());
            pst.setString(4, func.getApellido());
            pst.setString(5, func.getEstadoCivil());
            pst.setString(6, func.getTelefono());
            pst.setDate(7, func.getFechaNacimiento());
            pst.setString(8, func.getDirreccion());
            pst.setString(9, func.getEmail());
            pst.setString(10, func.getSexo());
            pst.setInt(11, func.getIdFuncionario());
            int filas = pst.executeUpdate();
            if(filas> 0){
                con.close();
                return true;
            }else{
                con.close();
                return false;
            }
           
        }catch (SQLException | ClassNotFoundException e){
            JOptionPane.showMessageDialog(null, 
                    "ERROR --> " + e.getMessage());
            return false;
        }
    }

    @Override
    public List<Object[]> consultalTodos() {
        List<Object[]> data = new ArrayList<>();
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        String sql = "SELECT * FROM funcionarios";
        
        try{
            Class.forName(db.getDriver());
            con = DriverManager.getConnection(
                    db.getUrl(),
                    db.getUser(),
                    db.getPassword()
            );
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                Object[] fila = new Object[11];
                for(int i= 0; i < 11; i++){
                    fila[i] = rs.getObject(i + 1);
                }
                data.add(fila);
            }
            con.close();
            
             
        }catch(SQLException | ClassNotFoundException e){
            JOptionPane.showMessageDialog(null, 
                    "ERROR --> " + e.getMessage());
        }finally{
            return data;
        }
    }

    @Override
    public Funcionario consutarUno(int id) {
        
        return null;
    }
    
}
