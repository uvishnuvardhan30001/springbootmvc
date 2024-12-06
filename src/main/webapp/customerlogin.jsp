<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
<%@include file="mainnavbar.jsp" %>
<h4 align="center" style="color:red">
<c:out value="${message}"></c:out>
</h2>
<h3 align ="center">Customer Login Form</h3>
<div clss="container">
<form method="post" action="checkcustomerlogin">

<label>Enter Email</label>
<input type="text" class="form-control" name="cemail" required/>
<br/>
<label>Enter Password</label>
<input type="password" class="form-control" name="cpwd" required/>
<br/>

<input type="submit" value="login" class="btn btn-success" />
<input type="reset" value="Clear"  class="btn btn-success"/>


</form>
</div>
</body>
</html>