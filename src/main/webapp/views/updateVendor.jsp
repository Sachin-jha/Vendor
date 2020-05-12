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
	<form action="updateVendorDetails" method="post">
		<pre>
			
			id:	<input type="text" name="id" value="${update.id}" readonly="readonly" />	<br>
			Code:	<input type="text" name="code" value="${update.code}" />	<br>
			Name:	<input type="text" name="name" value="${update.name}"/>	<br>			
			Type:	<select name="type" >
						<option ${update.type=='Regular' ? 'checked' : ''}>Regular</option>
						<option ${update.type=='Contract' ? 'checked' : ''}>Contract</option>
					</select>							<br>
			Email:	<input type="text" name="email" value="${update.email}"/>	<br>
			Phone:	<input type="text" name="phone" value="${update.phone}"/>	<br>
			Address:<textarea rows="2" cols="20" name="address">${update.address}</textarea>		<br>
		
			<input type="submit" value="Save"/>
		</pre>
 		  
		<pre> Click here to show all data <a href="displayVendor">VIEW DATA</a> </pre>
	</form>

</body>
</html>