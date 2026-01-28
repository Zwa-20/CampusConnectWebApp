<%-- 
    Document   : academic_support
    Created on : 28 Jan 2026, 8:05:46 PM
    Author     : sandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Academic Support Page</title>
    </head>
    <body>
        <h1>Academic Support</h1>
        <form action="request.jsp" method="POST">
            <label>Support Type</label>
            <select name="supportType">
                <option>Tutoring</option>
                <option>Consultation</option>
            </select>
            
            <br><br>
            
            <label>Subject:</label>
            <input type="text" name="subject" required=""/>
            
            <br><br>
            
            <label>Description:</label>
            <textarea rows="4" required=""></textarea>
            
            <br>
            <input type="submit" value="SUBMIT REQUEST"/>
        </form>
        <p>Click <a href="dashboard.jsp">here</a> to go to the dashboard</p>
        <p><li><a href="LogoutServlet.do">Logout</a></li></p>
    </body>
</html>
