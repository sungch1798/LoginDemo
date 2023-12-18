<%-- 
    Document   : A
    Created on : 2023年12月15日, 下午4:43:45
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>PAGE A</h1>
        <a href="B.jsp">PAGE_B</a><br><br>
        <a href="C.jsp">PAGE_C</a><br><br>
        <a href="D.jsp">PAGE_D</a><br><br>
        <h1>您從 <%=request.getHeader("Referer") %> 過來的</h1>
    </body>
</html>
