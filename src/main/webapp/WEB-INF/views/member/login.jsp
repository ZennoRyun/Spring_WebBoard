<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device.width" initial-scale="1">
<link rel="stylesheet" href="../resources/css/bootstrap.css">
<link rel="stylesheet" href="../resources/css/custom.css">
<title>로그인</title>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div align=center>
		<form method="post" class="form-horizontal">
			<div>
				<label>아이디</label>
				<div>
					<input type="text" name="id" placeholder="id">
				</div>
			</div>
			<br>
			<div>
				<label>비밀번호</label>
				<div>
					<input type="text" name="passwd" placeholder="password">
				</div>
			</div>
			<br>
			<div>
				<div>
					<button type="submit" class="btn btn-primary">확인</button>
					<button type="button" class="btn btn-primary" onclick="location.href='/myweb'">취소</button>
				</div>
			</div>
			<br>
			<div>아직 아이디가 없으신가요?</div><a href="/myweb/member/register"> 회원가입</a>
		</form>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>