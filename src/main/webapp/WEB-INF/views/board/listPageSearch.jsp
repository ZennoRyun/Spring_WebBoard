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
<title>insert title here</title>
</head>
<body>
	<div id="nav">
 		<%@ include file="../include/nav.jsp" %>
	</div>
	<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd" >
 		<thead>
 		 <tr>
   			<th style="text-align: center">번호</th>
   			<th style="text-align: center">제목</th>
   			<th style="text-align: center">작성일</th>
   			<th style="text-align: center">작성시간</th>
   			<th style="text-align: center">작성자</th>
   			<th style="text-align: center">조회수</th>
  		</tr>
 		</thead>
	 <tbody>
	 	<c:forEach items="${list}" var="list">
	 		<tr>
	  			<td>${list.bno}</td>
	  			<td style="width 20%">
   					<a href="/myweb/board/view?bno=${list.bno}">${list.title}</a>
				</td>
				<td>
					<fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd" />
				</td>
	  			<td>
					<fmt:formatDate value="${list.regDate}" pattern="a hh:mm:ss" />
				</td>
	  			<td>${list.writer}</td>
	  			<td>${list.viewCnt}</td>
	 		</tr>
		</c:forEach>
 	</tbody>
</table>
<div align=center>
<div>
 	<c:if test="${page.prev}">
 <span>[ <a href="/myweb/board/listPageSearch?num=${page.startPageNum - 1}${page.searchTypeKeyword}">이전</a> ]</span>
</c:if>

<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
 <span>
 
  <c:if test="${select != num}">
   <a href="/myweb/board/listPageSearch?num=${num}${page.searchTypeKeyword}">${num}</a>
  </c:if>    
  
  <c:if test="${select == num}">
   <b>${num}</b>
  </c:if>
    
 </span>
</c:forEach>

<c:if test="${page.next}">
 <span>[ <a href="/myweb/board/listPageSearch?num=${page.endPageNum + 1}${page.searchTypeKeyword}">다음</a> ]</span>
</c:if>
<div>
 <select name="searchType">
     <option value="title" <c:if test="${page.searchType eq 'title'}">selected</c:if>>제목</option>
        <option value="content" <c:if test="${page.searchType eq 'content'}">selected</c:if>>내용</option>
     <option value="title_content" <c:if test="${page.searchType eq 'title_content'}">selected</c:if>>제목+내용</option>
     <option value="writer" <c:if test="${page.searchType eq 'writer'}">selected</c:if>>작성자</option>
 </select>
 
 <input type="text" name="keyword" value="${page.keyword}"/>
 
 <button type="button" id="searchBtn">검색</button> <button type="button" onclick="location.href='/myweb/board/write'">글쓰기</button>
</div>
</div>
<script>

 document.getElementById("searchBtn").onclick = function () {  
	  let searchType = document.getElementsByName("searchType")[0].value;
	  let keyword =  document.getElementsByName("keyword")[0].value;
	  location.href = "/myweb/board/listPageSearch?num=1" + "&searchType=" + searchType + "&keyword=" + keyword;
 };
</script>
</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>