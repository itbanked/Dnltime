<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registerSuccess.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

<style>
	.headTR {
		background-color: lightGray;
		font-weight: bold;
	}
	a:hover {
		text-decoration: none;
	}
	a {
		color: black;
	}
	.okBox {
		text-align: right;
	}
</style>

</head>
<body>
<h1>Register Success!</h1>
	<div class="text-center table-responsive">
		<table class="table table-hover">
			<tr class="headTR">
				<td>code</td>
				<td>name</td>
				<td>continent</td>
				<td>region</td>
				<td>surfaceArea</td>
				<td>indepYear</td>
				<td>population</td>
				<td>lifeExpectancy</td>
				<td>gnp</td>
				<td>gnpOld</td>
				<td>localName</td>
				<td>governmentForm</td>
				<td>headOfState</td>
				<td>capital</td>
				<td>code2</td>
			</tr>
		
			<tr>
				<td>${country.code}</td> 
				<td>${country.name}</td>
				<td>${country.continent == null? 'null' : country.continent}</td>
				<td>${country.region == null? 'null' : country.region}</td>
				<td>${country.surfaceArea == null? 'null' : country.surfaceArea}</td>
				<td>${country.indepYear == null? 'null' : country.indepYear}</td>
				<td>${country.population == null? 'null' : country.population}</td>
				<td>${country.lifeExpectancy == null? 'null' : country.lifeExpectancy}</td> 
				<td>${country.gnp == null? 'null' : country.gnp}</td> 
				<td>${country.gnpOld == null? 'null' : country.gnpOld}</td> 
				<td>${country.localName == null? 'null' : country.localName}</td> 
				<td>${country.governmentForm == null? 'null' : country.governmentForm}</td> 
				<td>${country.headOfState == null? 'null' : country.headOfState}</td> 
				<td>${country.capital == null? 'null' : country.capital}</td> 
				<td>${country.code2 == null? 'null' : country.code2}</td>
			</tr>
		</table>
	</div>
	
	<div class="okBox">
		<a href="/country/page/${param.pageNo}" class="btn btn-sm btn-default">Register OK</a>
	</div>	
</body>
</html>