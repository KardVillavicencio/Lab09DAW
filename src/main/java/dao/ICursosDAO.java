/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.util.List;
import modelos.Cursos;

public interface ICursosDAO {
    boolean registrar(Cursos curso);
    List<Cursos> obtener();
    boolean actualizar(Cursos curso);
    boolean eliminar(int codigo);
    Cursos buscar(int codigo);
}
