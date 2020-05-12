<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="createVendor" method="post">
		<pre>
			
			Code:	<input type="text" name="code"/>	<br>
			Name:	<input type="text" name="name"/>	<br>			
			Type:	<select name="type">
						<option>Regular</option>
						<option>Contract</option>
					</select>							<br>
			Email:	<input type="text" name="email"/>	<br>
			Phone:	<input type="text" name="phone"/>	<br>
			Address:<textarea rows="2" cols="20" name="address"></textarea>		<br>
		
			<input type="submit" value="submit"/>
		</pre>
	<pre> ${saveVendor} </pre> <br>
 		  
		<pre> Click here to show all data <a href="displayVendor">VIEW DATA</a> </pre>
	</form>

</body>
</html>