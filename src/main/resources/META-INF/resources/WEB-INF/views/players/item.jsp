<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>
</head>
<body>
<div class="col-lg-10 col-lg-offset-1">
<h1>Manchester United Members</h1>
	<table class="animated bounceInLeft table table-striped">
		<tr class="info" align="center">
			<td><b>Idno</b></td>
			<td><b>Memberno</b></td>
			<td><b>Back Number</b></td>
			<td><b>Position</b></td>
			<td><b>Name</b></td>
			<td><b>Nationality</b></td>
			<td><b>Date of Join</b></td>
			<td></td>
		</tr>
		<tr align="center">
			<td>${players.idno}</td>
			<td>${players.memberno}</td>
			<td>${players.backnumber}</td>
			<td>${players.position}</td>
			<td>${players.name}</td>
			<td>${players.nationality}</td>
			<td><fmt:formatDate value="${players.dateofjoin}" pattern="yyyy-MM-dd"/></td>
			<td>
			</td>	
		</tr>
	</table>
	<a onclick="goBack()">이전 페이지로...</a>
		<script>
		function goBack() {
		    window.history.back();
		}
		</script>
</div>
</body>
</html>