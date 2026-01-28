<%-- 
    Document   : dashboard
    Created on : 28 Jan 2026, 3:15:40 PM
    Author     : sandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard Page</title>
    </head>
    <body>
        <h1>Welcome to our Campus Connect web application</h1>
        <p>Please select one of the following options:</p>
        <ul>
            <li><a href="academic_support.jsp">Request academic support</a>(tutoring, consultations).</li>
            <li><a href="announcements.jsp">Access campus announcements and events</a>.</li>
            <li><a href="track_status.jsp">Track service request status</a>.</li>
            <li><a href="feedback.jsp">Submit feedback on services</a>.</li>
        </ul>
        <li><a href="LogoutServlet.do">Logout</a></li>
    </body>
</html>
