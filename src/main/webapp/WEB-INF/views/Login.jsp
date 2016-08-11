<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Spring Login Form</title>
<h4>LOGIN</h4>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
</head>
<body>
    <form:form modelAttribute="user" action="india" method="POST">
   <div align="center">
          <span style="display:block"  >
                <label for="name">Username</label>
                    <form:input path="name"/>
                    </span>
                
               <span style="display:block">
               <label for="password">password</label>
                    <form:input path="password"/>
                </span>
                <span style="display:block">
                  <label for="submit">submit</label> 
                    </span>
                </div>
           </form:form>
           
</body>
</html>
