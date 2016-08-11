<%@ taglib uri="http://www.springframework.org/tags/form" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	
</head>
<body>
    <div align="center">
        <c:form action="register" method="post" commandName="userForm">
            <table border="0">
                <tr>
                    <td colspan="2" align="center"><h2>Registration</h2></td>
                </tr>
                <tr>
                    <td>User Name:</td>
                    <td><form:input path="username" /></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><form:password path="password" /></td>
                </tr>
                <tr>
                    <td>E-mail:</td>
                    <td><form:input path="email" /></td>
                </tr>
                <tr>
                    <td>mobile:</td>
                    <td><form:input path="mobile" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Register" /></td>
                </tr>
            </table>
        </c:form>
    </div>
</body>
</html>