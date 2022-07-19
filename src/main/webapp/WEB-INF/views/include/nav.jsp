<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<ul class="nav navbar-nav"> 

		<a>${login.username}님 반갑습니다!</a><br>
		<li>
		<a href="/myweb/member/logout">로그아웃</a><br>
		</li>
		<li>
		<a href="/myweb/member/mypage">마이페이지</a>
		</li>
 <li>
 <a href="/myweb/board/listPageSearch?num=1">글 목록</a> 
 </li>
</ul>