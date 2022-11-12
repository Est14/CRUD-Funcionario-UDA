/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.est14.crud.funcionrio.uda.modelo;

import java.sql.Date;


/**
 *
 * @author luisesteban.martinez
 */
public class Funcionario {
    
    private int idFuncionario;
    private String tipoId;
    private String numeroId;
    private String nombre;
    private String apellido;
    private String estadoCivil;
    private String telefono;
    private Date fechaNacimiento;
    private String dirreccion;
    private String email;
    private String sexo;

    public Funcionario() {
    }

    public Funcionario(String tipoId, String numeroId, String nombre, String apellido, String estadoCivil, String telefono, Date fechaNacimiento, String dirreccion, String email, String sexo) {
        this.tipoId = tipoId;
        this.numeroId = numeroId;
        this.nombre = nombre;
        this.apellido = apellido;
        this.estadoCivil = estadoCivil;
        this.telefono = telefono;
        this.fechaNacimiento = fechaNacimiento;
        this.dirreccion = dirreccion;
        this.email = email;
        this.sexo = sexo;
    }

    public int getIdFuncionario() {
        return idFuncionario;
    }

    public void setIdFuncionario(int idFuncionario) {
        this.idFuncionario = idFuncionario;
    }

    public String getTipoId() {
        return tipoId;
    }

    public void setTipoId(String tipoId) {
        this.tipoId = tipoId;
    }

    public String getNumeroId() {
        return numeroId;
    }

    public void setNumeroId(String numeroId) {
        this.numeroId = numeroId;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getEstadoCivil() {
        return estadoCivil;
    }

    public void setEstadoCivil(String estadoCivil) {
        this.estadoCivil = estadoCivil;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getDirreccion() {
        return dirreccion;
    }

    public void setDirreccion(String dirreccion) {
        this.dirreccion = dirreccion;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }
    
    
    
    
    
    
}
