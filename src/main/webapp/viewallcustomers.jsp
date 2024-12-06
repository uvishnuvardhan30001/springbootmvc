<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Customers</title>
</head>
<body>
<%@include file="adminnavbar.jsp" %>
<h3 align="center">View All Customers</h3><br/>
Total Customers:<c:out value="${count}"></c:out><br/><br/>
<table align="center" border="3" class="table table-striped">
<tr>
<th>ID</th>
<th>NAME</th>
<th>GENDER</th>
<th>DATE OF BIRTH</th>
<th>EMAIL</th>
<th>LOCATION</th>
<th>CONTACT NO</th>
</tr>

<c:forEach items="${customerlist}" var="customer">
<tr>
<td><c:out value="${customer.id }"></c:out></td>
<td><c:out value="${customer.name }"></c:out></td>
<td><c:out value="${customer.gender }"></c:out></td>
<td><c:out value="${customer.dateofbirth }"></c:out></td>
<td><c:out value="${customer.email }"></c:out></td>
<td><c:out value="${customer.location }"></c:out></td>
<td><c:out value="${customer.contact }"></c:out></td>
</tr>
</c:forEach>




</table>
</body>
</html>