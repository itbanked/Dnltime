<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registerForm.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

<style>
	a:HOVER {
		text-decoration: none;	
	}
	a {
		color: white;
	}
	.btn-sm {
		background-color: black;
	}
	.registerBox {
		width: 200px;
		height: 380px;
		margin: 50px auto;
	}
	h1 { 
		text-align: center;
		margin: 50px auto;
	}
	.registerButton {
		margin: 50px auto;
		text-align: right;
	}
	.preButton {
		width: 700px;
		height: 10px;
		margin:  auto;
		text-align: right;
	}
	label,input {
		margin-bottom: 10px;
	}
	.salarydate {
		width: 200px;
		margin: 15px auto;
	}
</style>

</head>
<body>
<h1>Sal 등록</h1>
	<div class="preButton">
		<a class="btn btn-sm" href="/sal/page/${param.pageNo}">
		<span class="glyphicon glyphicon-arrow-left"></span> Sal Page</a>
	</div>

<form:form action="/sal/register?pageNo=${param.pageNo}" method="post" modelAttribute="salForm">
	<div class="registerBox">
		<!-- basicSal -->
		<div>
			<label for="basicSal">
			<span class="glyphicon glyphicon-pencil"></span>
			Basic Salary</label>
			<form:input path="basicSal"/>
			<form:errors path="basicSal"/>
		</div>
		<!-- overtimeSal -->
		<div>
			<label for="overtimeSal">
			<span class="glyphicon glyphicon-pencil"></span>
			Overtime Salary</label>
			<form:input path="overtimeSal"/>
			<form:errors path="overtimeSal"/>
		</div>
		<!-- comm -->
		<div>
			<label for="comm">
			<span class="glyphicon glyphicon-pencil"></span>
			Commission</label>
			<form:input path="comm"/>
			<form:errors path="comm"/>
		</div>
		<!-- aidSal -->
		<div>
			<label for="aidSal">
			<span class="glyphicon glyphicon-pencil"></span>
			Aid Salary</label>
			<form:input path="aidSal"/>
			<form:errors path="aidSal"/>
		</div>
		<!-- saldate -->
		<div>
			<label for="saldate">
			<span class="glyphicon glyphicon-pencil"></span>
			Salary Date</label><br>
			<div class="salarydate">
				<form:radiobutton path="saldate" value="10" label="intern Salary Date: 10"/><br>
				<form:radiobutton path="saldate" value="20" label="employee Salary Date: 20" checked="checked"/>
				<form:errors path="saldate"/>
			</div>
		</div>
		<!-- membersrl -->
		<div>
			<label for="membersrl">
			<span class="glyphicon glyphicon-pencil"></span>
			Member Serial</label>
			<form:input path="membersrl"/>
			<form:errors path="membersrl"/>
		</div>
		<div>
			<form:errors/>
		</div> 
		<div class="registerButton">
			<input class="btn btn-info" type="submit" value="Sal 등록">	
		</div>
	</div>
	
	
</form:form>

</body>
</html>