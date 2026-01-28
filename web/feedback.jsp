<%-- 
    Document   : feedback
    Created on : 28 Jan 2026, 11:45:30 PM
    Author     : sandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback Page</title>
    </head>
    <body>
        <h1>Feedback</h1>
        <form action="feedbackOutcome.jsp">
            <label>Rate the service:</label>
            <select required>
                <option value="">-- Select --</option>
                <option>Excellent</option>
                <option>Good</option>
                <option>Average</option>
                <option>Poor</option>
            </select>

            <br><br>

            <label>Comments:</label>
            <textarea rows="4" required></textarea>

            <br>

            <input type="submit" value="Submit Feedback">
        </form>
    </body>
</html>
