<%-- 
    Document   : index.jsp
    Created on : 2023年12月15日, 上午9:22:28
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
        <h1 style="color: blue">會員登入系統!!</h1>
        <h3>您正在瀏覽的頁面為: <%=request.getRequestURI() %></h3><br>
        <h3>您從 <%=request.getHeader("Referer") %> 過來的</3><br>
        <h3><a href="member/login.jsp"><button style="width: 200px">會員系統</button></a></h3>
        <h3>現在時間為 : </h3><h3 id="demo"></h3>
        <script>
setInterval(myTimer, 1000);

function myTimer() {
  const d = new Date();
  document.getElementById("demo").innerHTML = d.toLocaleTimeString();
}
</script>
    </body>
    
</html>
