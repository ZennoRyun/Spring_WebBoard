<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device.width" initial-scale="1">
<link rel="stylesheet" href="../resources/css/bootstrap.css">
<link rel="stylesheet" href="../resources/css/custom.css">
<title>게시물 수정</title>
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
							<td>
							<input type="text" class="form-control" Name="title" value="${view.title}" maxlength="50" required>
							</td>
						</tr>
						<tr>
								<td>
								<input type="text" class="form-control" name="writer" value="${view.writer}" maxlength="30" readonly>
								</td>
				
						</tr>
						<tr>
							<td><textarea class="form-control" name="content" style="height: 350px;" required>${view.content}</textarea></td>
						</tr>
					</tbody>
					
				</table>
				<input type="submit" class="btn btn-primary pull-right" value="완료">
				<input type="button" onclick="location.href='/myweb/board/listPageSearch?num=1'" class="btn btn-primary pull-right" value="취소">
			</form>
		</div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>