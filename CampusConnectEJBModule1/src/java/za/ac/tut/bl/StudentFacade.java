/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import za.ac.tut.entity.Student;

/**
 *
 * @author sandi
 */
@Stateless
public class StudentFacade extends AbstractFacade<Student> implements StudentFacadeLocal {

    @PersistenceContext(unitName = "CampusConnectEJBModule1PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public StudentFacade() {
        super(Student.class);
    }

    @Override
    public Student findByEmail(String email) {
        TypedQuery<Student> query = em.createQuery(
            "SELECT s FROM Student s WHERE s.email = :email",
            Student.class
        );
        query.setParameter("email", email);

        try {
            return query.getSingleResult();
        } catch (Exception e) {
            return null; // email not found
        }
    }
    
}
