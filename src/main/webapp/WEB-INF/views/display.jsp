<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
html,
body {
	height: 100%;
}

body {
	margin: 0;
	background: linear-gradient(45deg, #49a09d, #5f2c82);
	font-family: sans-serif;
	font-weight: 200;
}

.container {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border:none;
}

table {
	width: 800px;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0,0,0,0.1);
}

th,
td {
	padding: 15px;
	background-color: rgba(255,255,255,0.2);
	color: #fff;
}

th {
	text-align: left;
}

thead {
	th {
		background-color: #55608f;
	}
}

tbody {
	tr {
		&:hover {
			background-color: rgba(255,255,255,0.3);
		}
	}
	td {
		position: relative;
		&:hover {
			&:before {
				content: "";
				position: absolute;
				left: 0;
				right: 0;
				top: -9999px;
				bottom: -9999px;
				background-color: rgba(255,255,255,0.2);
				z-index: -1;
			}
		}
	}
}
.button-87 {
  margin: 10px;
  padding: 15px 30px;
  text-align: center;
  text-transform: uppercase;
  transition: 0.5s;
  background-size: 200% auto;
  color: white;
  border-radius: 10px;
  display: block;
  border: 0px;
  font-weight: 700;
  box-shadow: 0px 0px 14px -7px #f09819;
  background-image: linear-gradient(45deg, #FF512F 0%, #F09819  51%, #FF512F  100%);
  cursor: pointer;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.button-87:hover {
  background-position: right center;
  /* change the direction of the change here */
  color: #fff;
  text-decoration: none;
}

.button-87:active {
  transform: scale(0.95);
}


</style>
<body>
    <H1>Product ManageMent system</H1>
    
	<div class="container">
		<table border="2">
    	<thead>
    		<tr>
    <th>Product id</th>
    <th>Name</th>
    <th>qty</th>
    <th>price</th>
    <th>Update </th>
    <th>Delete</th>
    </tr>
    	</thead>
<tbody>
	<c:forEach var="prod" items="${plist}">
   <tr>
      <td>${prod.pid}</td>
      <td>${prod.pname}</td>
      <td>${prod.qty}</td>
      <td>${prod.price}4</td>
      <td><a href="editProduct/${prod.pid}"><button class="button-87" role="button" >Update</button></a></td>
      <td><a href="deleteProduct/${prod.pid}"><button class="button-87" role="button" >Delete</button></a></td>
   </tr>
</c:forEach> 
<tr>
	<form action="/New/products/add" method="post">
	<td>
  <input type="text" name="pid" value="${p.pid}" style="border-radius:10px; font-size:18pt;height:50px;width:200spx;"id="pid">
  
</label></td>
	<td>
  <input type="text" name="pname" value="${p.pname}" style="border-radius:10px; font-size:18pt;height:50px;width:200spx;"  id="pname">

</label></td>
	<td>
  <input type="text" name="qty" value="${p.qty}" style="border-radius:10px; font-size:18pt;height:50px;width:200spx;"  id="qty">

</label></td>
	<td>
  <input type="text" name="price" value="${p.price}" style="border-radius:10px; font-size:18pt;height:50px;width:200spx;" id="price"></td>
	<td><button class="button-87" role="button"> Add </button></td>
	</form>
</tr> 
</tbody>
</table>
	</div>  
</body>
</html>