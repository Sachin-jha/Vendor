<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table style="text-align: center">
		<tr>
			<th>ID</th>
			<th>Code</th>
			<th>Name</th>
			<th>Type</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Address</th>
		</tr>

		<c:forEach items="${showAllData}" var="vendor">
			
			<tr>
				<td> <c:out value="${vendor.id}"/> </td> 
				<td> <c:out value="${vendor.code}"/> </td>
				<td> <c:out value="${vendor.name}"/> </td>
				<td> <c:out value="${vendor.type}"/> </td>
				<td> <c:out value="${vendor.email}"/> </td>
				<td> <c:out value="${vendor.phone}"/> </td>
				<td> <c:out value="${vendor.address}"/> </td>
				<td> <a href="deleteVendor?id=${vendor.id}">DELETE</a>  </td>
				<td> <a href="updateVendorData?id=${vendor.id}">UPDATE</a>  </td>
			</tr>		
		
		</c:forEach>

	</table>
	<pre> <b>Click to add another Vendor</b> <a href="vendorRegistration">ADD VENDOR</a> </pre>
</body>
</html>