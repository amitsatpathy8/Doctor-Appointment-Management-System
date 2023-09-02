<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="doctor"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<doctor:form action="" modelAttribute="doctorDetails">
Name: <%-- <doctor:input path="dname" type="text" name="dname" placeholder="Enter Name"/> --%>
		<doctor:input type="text" name="dname"
			path="dname" placeholder="Enter Name"/>
Email: <doctor:input path="demail" />
	</doctor:form>
</body>
</html>