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

<h3 align="center">View All Products</h3><br/>
<table align="center" border="3" class="table table-striped">
<tr>
<th>ID</th>
<th>NAME</th>
<th>DESCRIPTION</th>
<th>COST</th>
<th>IMAGE</th>
</tr>

<c:forEach items="${products}" var="product">
<tr>
<td><c:out value="${product.id }"></c:out></td>
<td><c:out value="${product.name }"></c:out></td>
<td><c:out value="${product.description }"></c:out></td>
<td><c:out value="${product.cost }"></c:out></td>
<td>
<img alt="NAAAA" src="displayproductimage?id=${product.id }" width="25%" height="25%">
</td>
</tr>
</c:forEach>




</table>
</body>
</html>