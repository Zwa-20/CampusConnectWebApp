<%-- 
    Document   : track_status
    Created on : 28 Jan 2026, 11:37:58 PM
    Author     : sandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Track Status Page</title>
    </head>
    <body>
        <h1>Track Status</h1>
        <p>Track your status:</p>
        <table border="1">
            <tr>
                <th>Request ID</th>
                <th>Support Type</th>
                <th>Subject</th>
                <th>Status</th>
            </tr>
            <tr>
                <td>REQ001</td>
                <td>Tutoring</td>
                <td>Mathematics</td>
                <td class="status-pending">Pending</td>
            </tr>
            <tr>
                <td>REQ002</td>
                <td>Consultation</td>
                <td>Computer Science</td>
                <td class="status-completed">Completed</td>
            </tr>
        </table>
        <a href="dashboard.jsp">Dashboard</a>
        <a href="feedback.jsp">Feedback</a>
        <a href="LogoutServlet.do">Logout</a>
    </body>
</html>
