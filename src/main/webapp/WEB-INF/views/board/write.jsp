<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device.width" initial-scale="1">
<link rel="stylesheet" href="../resources/css/bootstrap.css">
<link rel="stylesheet" href="../resources/css/custom.css">
<title>게시물 작성</title>
</head>
<body>
<div align=center>

<div class="container">
		<div class="row">
			<form method="post">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<tbody>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="제목" name="title" maxlength="50" required></td>
						</tr>
						<tr>
						<c:choose>
							<c:when test="${login == null}">
								<td>
								<input type="text" class="form-control" name="writer" maxlength="50" placeholder="이름을 입력하세요" required>
								</td>
							</c:when>
							<c:when test="${login != null}">
								<td>
								<input type="text" class="form-control"	placeholder="작성자" name="writer" maxlength="30" placeholder="${login.id}" value="${login.id}" readonly>
								</td>
							</c:when>
						</c:choose>
						</tr>
						<tr>
							<td><textarea class="form-control"
									placeholder="내용" name="content" style="height: 350px;" required></textarea></td>
						</tr>
					</tbody>
					
				</table>
				<input type="submit" class="btn btn-primary" value="작성">
				<input type="button" onclick="location.href='/myweb/board/listPageSearch?num=1'" class="btn btn-primary" value="취소">
			</form>
		</div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>