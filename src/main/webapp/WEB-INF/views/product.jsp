<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
	<form:form action="productmodel.do" method="POST"
		modelAttribute="ob">
		<tr>
			<td>Product ID</td>
			<td><form:input path="id" /></td>
		</tr>
		<tr>
			<td>Product Name</td>
			<td><form:input path="name" /></td>
		</tr>
		<tr>
			<td>Product Description</td>
			<td><form:input path="description" /></td>
		</tr>
		<tr>
			<td>Product Price</td>
			<td><form:input path="price" /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" name="action" value="Add" />
				<input type="submit" name="action" value="Edit" /> <input
				type="submit" name="action" value="Delete" /> <input type="submit"
				name="action" value="Search" /></td>
		</tr>
		<br>
		<table border="1">
			<th>ID</th>
			<th>NAME</th>
			<th>DESCRIPTION</th>
			<th>PRICE</th>
			<c:forEach items="${productmodelList}" var="productModel">
				<tr>
					<td>${productModel.id}</td>
					<td>${productModel.name}</td>
					<td>${productModel.description}</td>
					<td>${productModel.price}</td>



				</tr>

			</c:forEach>
		</table>

	</form:form>
</body>
</html>
