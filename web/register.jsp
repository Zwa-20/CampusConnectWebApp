<%-- 
    Document   : register
    Created on : 28 Jan 2026, 12:58:41 PM
    Author     : sandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body>
        <h1>Register</h1>
        <p>Please provide details to register</p>
        <form action="RegistrationServlet.do" method="POST">
            <table>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" required=""/></td>
                </tr>
                <tr>
                    <td>Surname:</td>
                    <td><input type="text" name="surname" required=""/></td>
                </tr>
                <tr>
                    <td>Student Number:</td>
                    <td><input type="text" name="studNum" required=""/></td>
                </tr>
                <tr>
                    <td>Student Email:</td>
                    <td><input type="email" name="email" required=""/></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="password" required=""/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="REGISTER"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
