<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device.width" initial-scale="1">
<link rel="stylesheet" href="../resources/css/bootstrap.css">
<link rel="stylesheet" href="../resources/css/custom.css">
<title>게시물 조회</title>
</head>
<body>
<div id="nav">
	<%@ include file="../include/nav.jsp" %>
</div>
<div align=center>
<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<tbody>
					<tr>
						<td style="width 20%;">글 제목</td>
						<td colspan="2">${view.title}</td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2">${view.writer}</td>
					</tr>
					<tr>
						<td>작성일자</td>
						<td colspan="2"><fmt:formatDate value="${view.regDate}" pattern="yyyy-MM-dd" /></td>
					</tr>
					<tr>
						<td>작성시간</td>
						<td colspan="2"><fmt:formatDate value="${view.regDate}" pattern="a hh:mm:ss" /></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style="min-height: 200px; text-align: center;">${view.content}</td>
					</tr>
					<tr>
						<td>조회수</td>
						<td colspan="2">${view.viewCnt}</td>
					</tr>
				</tbody>

			</table>
		</div>
	</div>
<c:choose>
<c:when test="${login.id == view.writer}">
<div>
<button type="button" onclick="location.href='/myweb/board/modify?bno=${view.bno}'">수정</button>
<button type="button" onclick="location.href='/myweb/board/delete?bno=${view.bno}'">삭제</button>
</div>
<hr />
</c:when>
</c:choose> 

<!-- 댓글 시작 -->

<ul>
	<c:forEach items="${reply}" var="reply">
	<li>
		<div>
			<p>${reply.writer} / <fmt:formatDate value="${reply.regDate}" pattern="yyyy-MM-dd" /></p>
			<p>${reply.content }</p>
		</div>
	</li>	
	</c:forEach>
</ul>

<div>
	<form method="post" action="/myweb/reply/write">
		<p>
			<label>댓글 작성자</label>
			<c:choose>
				<c:when test="${login == null}">
					<input type="text" name="writer" placeholder="이름을 입력하세요" required>
				</c:when>
				<c:when test="${login != null}">
					<input type="text" name="writer" placeholder="${login.id}" value="${login.id}" readonly>
				</c:when>
			</c:choose>
		</p>
		<p>
			<textarea rows="5" cols="50" name="content"></textarea>
		</p>
		<p>
			<input type="hidden" name="bno" value="${view.bno}">
			<button type="submit">댓글 작성</button>
		</p>
	</form>
	
</div>
</div>
<!-- 댓글 끝 -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>