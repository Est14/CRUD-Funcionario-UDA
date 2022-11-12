/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.est14.crud.funcionrio.uda.modelo;

import java.util.List;

/**
 *
 * @author luisesteban.martinez
 */
public interface Operaciones {
    
    public boolean insertar(Funcionario obj);
    public boolean eliminar(String id);
    public boolean modificar(Funcionario obj);
    public List<Object[]> consultalTodos();
    public Funcionario consutarUno(int id);
    
}
