<%@ page import="com.klef.jfsd.springboot.model.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  Customer c = (Customer) session.getAttribute("customer");
  if (c == null) {
    out.println("Customer data not found in session.");
    return;
  }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Profile</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<%@ include file="customernavbar.jsp" %>
<h3 align="center">Customer Update Profile Form</h3>
<div class="container">
  <form method="post" action="update">
    <label>ID</label>
    <input type="number" class="form-control" name="cid" value="<%= c.getId() %>" readonly required/>
    <br/>
    <label>Enter Full Name</label>
    <input type="text" class="form-control" name="cname" value="<%= c.getName() %>" required/>
    <br/>
    <label>Select Gender</label>
    <input type="radio" class="form-check-label" name="cgender" value="Male" required/> Male
    <input type="radio" class="form-check-label" name="cgender" value="Female" required/> Female
    <input type="radio" class="form-check-label" name="cgender" value="Others" required/> Others
    <br/>
    <label>Select Date</label>
    <input type="date" class="form-control" name="cdob"  required/>
    <br/>
    <label>Enter Email Id</label>
    <input type="email" class="form-control" name="cemail" value="<%= c.getEmail() %>" readonly required/>
    <br/>
    <label>Enter Password</label>
    <input type="password" class="form-control" name="cpwd"  value="<%= c.getPassword() %>" required/>
    <br/>
    <label>Enter Location</label>
    <input type="text" class="form-control" name="clocation" value="<%= c.getLocation() %>" required/>
    <br/>
    <label>Enter Contact Number</label>
    <input type="number" class="form-control" name="ccontact" value="<%= c.getContact() %>" required/>
    <br/>
    <input type="submit" value="Update" class="btn btn-success"/>
    <input type="reset" value="Clear" class="btn btn-danger"/>
  </form>
</div>
</body>
</html>
