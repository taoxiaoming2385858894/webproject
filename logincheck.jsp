<%@ page language="java" import="java.util.*,java.sql.*,java.net.*" pageEncoding="utf-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
 <head>  
    <base href="<%=basePath%>">  
      
    <title>My JSP 'Feilong_loginCh.jsp' starting page</title>  
      
   <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page">  
    <!-- 
    <link rel="stylesheet" type="text/css" href="styles.css"> 
    -->  
 
  </head>  
  <body>  
   <%     
            String user = new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");    
           String pwd = request.getParameter("pwd");  
 
           String driverClass="com.mysql.jdbc.Driver";  
           String url = "jdbc:mysql://localhost:3306/hd";  
           String username = "root";  
          String password = "123456";   
           Class.forName(driverClass); 
            Connection conn = DriverManager.getConnection(url,username,password); 
            PreparedStatement pStmt = conn.prepareStatement("select * from hd where username= '" + user + "' and password = '" + pwd + "'");  
              ResultSet rs = pStmt.executeQuery();  
                if(rs.next()){  
                   response.sendRedirect("loginsuccess1.jsp?username="+URLEncoder.encode(user)); 
                }else{  
                   response.sendRedirect("login.jsp?errNo"); 
                }  
    rs.close();  
     pStmt.close();  
     conn.close();  
     %>  
  </body>  
</html>  
