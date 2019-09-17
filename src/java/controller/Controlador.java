
package controller;
import Entidad.Empleado;

import config.Conexion;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controlador {
    
    Conexion con=new Conexion();
    JdbcTemplate jdbcTemplate=new JdbcTemplate(con.Conectar());
    ModelAndView mav=new ModelAndView();
    String dni;
    List datos;
    
    
    //listar los datos de la BD
    @RequestMapping("index.htm")
       public ModelAndView Listar(){
           String sql="select * from empleado";
           datos =this.jdbcTemplate.queryForList(sql);
           mav.addObject("lista", datos);
           mav.setViewName("index");
           return mav;
           
       }
       
       //metodo para agrega un nuevo registro a la BD
       @RequestMapping(value="agregar.htm", method=RequestMethod.GET)
       public ModelAndView Agregar(){
           mav.addObject(new Empleado());
           mav.setViewName("agregar");
           return mav;
       }
       
       @RequestMapping(value="agregar.htm", method=RequestMethod.POST)
        public ModelAndView Agregar(Empleado e){
          String sql ="insert into empleado(DNI, NOMBRE, APELLIDOS, EDAD, SUELDO) values(?,?,?,?,?)";
           this.jdbcTemplate.update(sql, e.getDni(), e.getNombre(), e.getApellidos(), e.getEdad(), e.getSueldo());
           return new ModelAndView("redirect:/index.htm");
       }
       
       //metodo de editar los datos 
       @RequestMapping(value="editar.htm", method=RequestMethod.GET)
       public ModelAndView Editar(HttpServletRequest request){
       dni=request.getParameter("dni");
       String sql="select * from empleado where DNI='"+ dni +"'";
       datos=this.jdbcTemplate.queryForList(sql);
       mav.addObject("lista", datos);
       mav.setViewName("editar");
       return mav;
       }
       
       
       @RequestMapping(value="editar.htm", method=RequestMethod.POST)
       public ModelAndView Editar(Empleado e){
           String sql="update empleado set NOMBRE=?, APELLIDOS=?, EDAD=?, SUELDO=? where DNI=?";
           this.jdbcTemplate.update(sql, e.getNombre(), e.getApellidos(), e.getEdad(), e.getSueldo(), dni);
           return new ModelAndView("redirect:/index.htm");
       }
       
       
       //metodo eliminar 
       @RequestMapping(value="delete.htm")
       public ModelAndView Delete(HttpServletRequest request){
       dni=request.getParameter("dni");
       String sql="delete from empleado where DNI='" +dni +"'";
       this.jdbcTemplate.update(sql);
       return new ModelAndView("redirect:/index.htm");
       }
       
    
}
