<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ taglib  
    prefix="c"  
    uri="http://java.sun.com/jsp/jstl/core"   
%>  
<c:url value="/login" var="loginUrl"/>  
<form action="${loginUrl}" method="post">         
     
    <p>  
        <label for="username">Username</label>  
        <input type="text" id="username" name="username"/>      
    </p>  
    <p>  
        <label for="password">Password</label>  
        <input type="password" id="password" name="password"/>      
    </p>  
    <p>  
        <label for="remember"> Remember me</label>  
        <input type="checkbox" name="remember" />  
    </p>  
    <input type="hidden"                          
        name="${_csrf.parameterName}"  
        value="${_csrf.token}"/>  
    <button type="submit" class="btn">Log in</button>  
</form> 
</body>
</html>