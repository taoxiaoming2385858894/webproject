
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <base href="<%=basePath%>">  
          <title>My JSP 'Feilong_index.jsp' starting page</title>  
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
    <center>  
   <font face = "楷体" size = "8" color = "#000">欢迎使用</font><hr>  
   <div>  
       <img alt="" width = "600" height = "500" src="C:\新建文件夹\01.gif">  
   </div>  
   <table width = "100" border ="2" bordercolor = "#00F">  
     <tr>  
       <td><input type = "button" value = "欢迎登录" onclick = "window.location.href('login.jsp')"></td>  
        <td><input type = "button" value = "是否还未注册" onclick = "window.open('register.jsp')"></td>  
       </tr>   
   </table>  
 </center>  
  </body>  
</html>  
