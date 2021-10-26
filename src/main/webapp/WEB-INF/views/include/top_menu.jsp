<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<head>

<title>회원가입</title>
  <meta charset="UTF-8">
  
  <link rel="stylesheet" href="../assets/css/main.css" />

<<<<<<< HEAD
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
 
</head>
<style>
.h1{float: left;}
.navbar-nav ml-auto"{
	 line-height: 75px;
	 color:black;
	 padding:0 15px;
	 display:block;
}
</style>

			<header id="header">
					<a href="${root}main"><h1>WINE EASY</h1></a>
			<nav>
			<ul class="navbar-nav ml-auto">
			<c:choose>
				<c:when test="${loginUser.userLogin == true }" > <!-- 로그인이 된 상태라면 정보수정과 로그아웃을 잡아오거라 -->
					<!-- 로그인시 -->
					<li class="nav-item">
						<a href="#" class="nav-link">${loginUser.user_name}님 환영합니다</a> <!-- //인터셉터꺼 -->
					</li>
					<li class="nav-item">
						<a href="${root}subscribe/subscribe" class="nav-link">구독서비스</a>
					</li>
					<li class="nav-item">
						<a href="${root}product/home" class="nav-link">와인판매</a>
					</li>
						<li class="nav-item">
						<a href="${root}notice/notice_board_read" class="nav-link">공지사항</a>
					</li>
					<li class="nav-item">
						<a href="${root }user/mypage" class="nav-link">마이페이지</a>
					</li>
					<li class="nav-item">
						<a href="${root }user/logout" class="nav-link">로그아웃</a>
					</li>
				</c:when>
				<c:otherwise>
					<!-- 로그아웃시 -->
					<li class="nav-item"> <!-- 로그아웃이 된 상태라면 로그인과 회원가입을 가져오거라 -->
						<li class="nav-item">
						<a href="${root}subscribe/subscribe" class="nav-link">구독서비스</a>
					</li>
					<li class="nav-item">
						<a href="${root}product/home" class="nav-link">와인판매</a>
					</li>
						<li class="nav-item">
						<a href="${root}notice/notice_board_read" class="nav-link">공지사항</a>
					</li>
						<li class="nav-item">
						<a href="${root}user/login" class="nav-link">로그인/회원가입</a>
					
				</c:otherwise>
			</c:choose>
		</ul></nav>
		</header>
=======
<!-- Header -->

			<header id="header">
					<a href="${root}main"><h1>WINE EASY</h1></a>
				<nav>
					<ul>
						<li><a href="${root}subscribe/subscribe">구독서비스</a></li>
						<li><a href="${root}product/home">와인판매</a></li>
						<li><a href="${root}notice/notice_board_read">공지사항</a></li>
						<li><a href="${root}user/login">로그인/회원가입</a></li>
					</ul>
				</nav>
			</header>
>>>>>>> branch 'develop' of https://github.com/ws0819/WPWPWPWP.git
