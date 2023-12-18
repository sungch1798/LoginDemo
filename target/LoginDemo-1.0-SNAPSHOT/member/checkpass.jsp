<%-- 
    Document   : checkpass.jsp
    Created on : 2023年12月15日, 上午9:49:45
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.util.*;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%!
    String []users={"user01","user02","user03"};
    String []pass={"123","456","789"};
    HttpSession session=request.getSession();
    
    HashMap <String,String> userMap = new HashMap<>();
    
           public boolean checkArray(String u, String p) {
            for(int i=0; i< users.length ; i++ ) {
                if( users[i].equals(u)) {
                    // 如果找到
                    if( pass[i].equals(p)) {
                      // 帳密正確
                      return true;
                    } else {
                      // 密碼錯誤
                      return false; // 帳號對 密碼錯
                    }
                } 
            }
            return false;  // 無此帳號
        public boolean checkMap(String u, String p)
        {
        if(userMap.containsKey(u))
            {
            if(userMap.get(u).equals(p))
                {
                return true;    
                }
            }
            return false;
       }
    %>   
    <%
    userMap.put("user01","123");    
    userMap.put("user02","456");    
    userMap.put("user03","789");    
    userMap.put("kavin","seet@gmail.com");    
    userMap.put("google","https://www.google.com.tw/");  
    
    String user=request.getParameter("username");
    String pass=request.getParameter("pass");
   if (user==null || pass==null)
    {
        response.sendRedirect("login.jsp");
    }else{
        if(checkMap(user,pass))
        {
            session =request.getSession();
            session.setAttribute("username",user);
            //session.setAttribute("isLogin",true);
            response.sendRedirect("page1.jsp");
        }
        else{
        response.sendRedirect("login.jsp");
        }
     
    %>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
