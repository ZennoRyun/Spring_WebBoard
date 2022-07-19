<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
</head>
<meta name="viewport" content="width=device.width" initial-scale="1">
<link rel="stylesheet" href="../resources/css/bootstrap.css">
<link rel="stylesheet" href="../resources/css/custom.css">
<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div align=center>
		<form method="post" class="form-horizontal" autocomplete="off">
			<div>
				<label>아이디</label>
				<div>
					<input type="text" name="id" value="${login.id}">
				</div>
			</div>
			<br>
			<div>
				<label>비밀번호</label>
				<div>
					<input type="password" name="passwd" id="passwd" required>
				</div>
			</div>
			<br>
			<div>
				<div>
					<button type="submit" class="btn btn-primary">회원 탈퇴</button>
					<button type="button" class="btn btn-primary" onclick="location.href='/myweb/member/mypage'">취소</button>
				</div>
			</div>
		</form>
	</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>