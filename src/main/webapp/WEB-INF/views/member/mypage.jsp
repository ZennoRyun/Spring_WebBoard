<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device.width" initial-scale="1">
<link rel="stylesheet" href="../resources/css/bootstrap.css">
<link rel="stylesheet" href="../resources/css/custom.css">
<title>my page</title>
</head>
<body>
	<div id="nav">
		<%@ include file="../include/nav.jsp"%>
	</div>
	<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd"> 
		<tr>
			<td>아이디</td>
			<td>${login.id}</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${login.username}</td>
		</tr>
	</table>
	<br>
	<br>
	<br>
	<div align=center>
	<a href="/myweb/member/modification">회원 정보 수정</a><br/>
	<br>
	<a href="/myweb/member/withdrawal">회원 탈퇴</a><br/>
	</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>