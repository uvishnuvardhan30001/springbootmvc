<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADD Product</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<h3 align ="center">ADD Product</h3>

<form method="post" action="insertproduct" enctype="multipart/form-data">

<label>Product Name</label>
<input type="text" class="form-control" name="pname" required/>
<br/>
<label>Product Cost</label>
<input type="number" class="form-control" name="pcost" step="0.01" required/>
<br/>
<label>Product Descripition</label>
<textarea name="pdescription" class="form-control" required></textarea>
<br/>
<label>Product Image</label>
<input type="file" class="form-control" name="pimage" required/>
<br/>
<input type="submit" value="Add" class="btn btn-success" />
<input type="reset" value="Clear"  class="btn btn-success"/>


</form>
</body>
</html>