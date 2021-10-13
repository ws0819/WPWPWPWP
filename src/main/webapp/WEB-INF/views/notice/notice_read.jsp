<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
   content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>Pricing example · Bootstrap v5.1</title>

<!-- 내꺼 부트스트랩 링크 -->
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF"
   crossorigin="anonymous">
   
<link rel="canonical"
   href="https://getbootstrap.com/docs/5.1/examples/pricing/">
  
 <style>
 textarea {
    width: 100%;
    height: 20em;
    border: none;
    resize: none;
  }
 
 </style>  
   
</head>
<body>
 <!-- 내용 -->
	         <div class="container" >
				<div class="input-group mb-3" style="margin-top:100px;">
					
				  <span class="input-group-text">제목</span>
				  <input type="text" class="form-control" placeholder="${noticeInfo.notice_title }" aria-label="Username">
				  <span class="input-group-text">시간</span>
				  <input type="text" class="form-control" placeholder="${noticeInfo.notice_date }" aria-label="Time">
				</div>
				 
			       <div class="input-group">
			 	
		 	 <textarea class="form-control text-center" aria-label="With textarea" placeholder="${noticeInfo.notice_content }"></textarea>
				</div>
					 
			 <div>
		        <div style="text-align:right; margin-top:30px" >
		        <a href="${root}notice/notice_delete?notice_title=${noticeInfo.notice_title}">삭제</a>
		        <a href="${root}notice/notice_modify?notice_title=${noticeInfo.notice_title}">수정</a>
		       </div>
			</div>



   <!-- 내꺼 부트스트랩 js -->
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ"
      crossorigin="anonymous"></script>
</body>
</html>