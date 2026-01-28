/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.bl.StudentFacadeLocal;
import za.ac.tut.entity.Student;
import za.ac.tut.password.PasswordUtil;

/**
 *
 * @author sandi
 */
public class LoginServlet extends HttpServlet {
@EJB StudentFacadeLocal sfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        Student student = sfl.findByEmail(email);
        
        if(student == null){
            response.getWriter().println("Invalid email or password");
            return;
        }
        
        String hashedPassword = PasswordUtil.hashPassword(password);
        
        if(hashedPassword.equals(student.getPassword())){
            HttpSession session = request.getSession();
            session.setAttribute("student", student);
            
            response.sendRedirect("dashboard.jsp");
        }else{
            response.getWriter().println("Invalid email or password");
        }
    }

}
