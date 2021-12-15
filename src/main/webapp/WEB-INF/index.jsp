<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <!-- c:out ; c:forEach ; c:if -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
   <!-- Formatting (like dates) -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
   <!-- form:form -->
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
   <!-- for rendering errors on PUT routes -->
 <%@ page isErrorPage="true" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login & Registration</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
      rel="stylesheet" 
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
      crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/style.css">
	<script type="text/javascript" src="/js/app.js"></script>
</head>
<body>
    <h3 class="text-danger text-center"><c:out value="${notLoggedIn}"></c:out></h3>
    <div id="container">
        <div class="box">
            <div class="boxContent">
                <form:form action="/register" method="post" modelAttribute="newUser">
                <h1>Register</h1>
                    <div class="form-group">
                        <label>First Name:</label>
                        <form:input path="firstName" class="form-control" />
                        <form:errors path="firstName" class="text-danger" />
                    </div>
                    <div class="form-group">
                        <label>Last Name:</label>
                        <form:input path="lastName" class="form-control" />
                        <form:errors path="lastName" class="text-danger" />
                    </div>
                    <div class="form-group">
                        <label>Email:</label>
                        <form:input path="email" class="form-control" />
                        <form:errors path="email" class="text-danger" />
                    </div>
                    <div class="form-group">
                        <label>Password:</label>
                        <form:password path="password" class="form-control" />
                        <form:errors path="password" class="text-danger" />
                    </div>
                    <div class="form-group">
                        <label>Confirm Password:</label>
                        <form:password path="confirm" class="form-control" />
                        <form:errors path="confirm" class="text-danger" />
                    </div><br>
                    <input type="submit" value="Register" class="btn btn-primary" />
                </form:form>
            </div>
        </div>
        <div class="box">
            <div class="boxContent">
                <form:form action="/login" method="post" modelAttribute="newLogin">
                <h1>Login</h1>
                    <div class="form-group">
                        <label>Email:</label>
                        <form:input path="email" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label>Password:</label>
                        <form:password path="password" class="form-control" />
                        <form:errors path="email" class="text-danger" />
                        <form:errors path="password" class="text-danger" />
                    </div><br>
                    <input type="submit" value="Login" class="btn btn-success" />
                </form:form>
            </div>
        </div>
    </div>
</body>

</html>


