<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="../css/styles.css" rel="stylesheet"></link>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Books</title>
</head>
<body>
	<h1>List of Customers</h1>


	<table>
	<c:forEach items="${customers}" var="customer">
        <tr class>
        	<td><h2>${customer.cId}</h2></td>
        	<td><h2>${customer.cName}</h2></td>
    	</tr>

    	<tr>
    		<td>Loan Period = ${customer.loanPeriod }</td>
    	</tr>
    	
		
	
		<c:forEach items="${customer.loans}" var="loan">
		
			<tr> 
		    	<td>${loan.lid}</td>
		    	<td>${loan.book.bid}</td>
		    	<td>${loan.book.title}</td>
		    	<td>${loan.book.author}</td>
    		</tr>
    		
		</c:forEach>
		</c:forEach>
	</table>
	
	<div class="table-title">
<h3>List of Customers</h3>
</div>
<table class="table-fill">
<thead>
<tr>
<th class="text-left">Customer ID</th>
<th class="text-left">Customer Name</th>
</tr>
</thead>
<tbody class="table-hover">
<tr>
<td class="text-left">January</td>
<td class="text-left">$ 50,000.00</td>
</tr>
<tr>
<td class="text-left">February</td>
<td class="text-left">$ 10,000.00</td>
</tr>
<tr>
<td class="text-left">March</td>
<td class="text-left">$ 85,000.00</td>
</tr>
<tr>
<td class="text-left">April</td>
<td class="text-left">$ 56,000.00</td>
</tr>
<tr>
<td class="text-left">May</td>
<td class="text-left">$ 98,000.00</td>
</tr>
</tbody>
</table>
	
	
 </body>
</html>