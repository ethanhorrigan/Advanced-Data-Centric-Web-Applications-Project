<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Book</title>
</head>
<body>
	<h1>Add New Book</h1>
	
	<form:form modelAttribute="book">
 		<table>
			<tr>
				<td>Title:</td>
				<td><form:input path="title"></form:input></td>
				<td><form:errors path="title"></form:errors></td>
			</tr>
			<tr>
				<td>Author:</td>
				<td><form:input path="author"></form:input></td>
				<td><form:errors path="author"></form:errors></td>
			</tr>
		<tr>
				<td colspan="2">
					<input type="submit" value="Add"/>
				</td>
			</tr>
		</table> 
	</form:form>
    <a href="/">Home</a>
    <a href="/">Add Book</a>
    <a href="/">Add Customers</a>
    <a href="/">New Loan</a>
</body>
</html>