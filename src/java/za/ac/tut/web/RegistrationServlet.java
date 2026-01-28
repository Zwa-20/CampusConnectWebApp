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
import za.ac.tut.bl.StudentFacadeLocal;
import za.ac.tut.entity.Student;
import za.ac.tut.password.PasswordUtil;

/**
 *
 * @author sandi
 */
public class RegistrationServlet extends HttpServlet {
@EJB StudentFacadeLocal sfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String studNum = request.getParameter("studNum");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        String hashedPassword = PasswordUtil.hashPassword(password);
        
        Student student = new Student();
        student.setName(name);
        student.setSurname(surname);
        student.setStudentNum(studNum);
        student.setEmail(email);
        student.setPassword(hashedPassword);
        
        sfl.create(student);
        
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

}
