<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/css/style.css" rel="stylesheet"></link>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Books</title>
</head>
<body>
	<h1>List of Customers</h1>


	<table>
	<c:forEach items="${cust}" var="cust">
        <tr>
        	<td><h2>${cust.cId}</h2></td>
        	<td><h2>${cust.cName}</h2></td>
    	</tr>

    	<tr>
    		<td>Loan Period = ${loan.lid }</td>
    	</tr>
    	
		</c:forEach>
		
		
		<c:forEach items="${cust.loans}" var="loan">
		
			<tr> 
		    	<td>${loan.lid}</td>
    		</tr>
    		
		</c:forEach>
	</table>
	
 </body>
</html>