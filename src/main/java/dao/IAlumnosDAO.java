/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.util.List;
import modelos.Alumnos;

/**
 *
 * @author Multicomp
 */
public interface IAlumnosDAO {
    public boolean registrar(Alumnos alumno);
    public List<Alumnos> obtener();
    public boolean actualizar(Alumnos alumno);
    public boolean eliminar(int codigo);
    public Alumnos buscar(int codigo);
}
